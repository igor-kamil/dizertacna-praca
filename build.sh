#!/usr/bin/env bash
set -euo pipefail

# Airy Pandoc → PDF build for the dissertation.
# Usage:
#   chmod +x build.sh   # once
#   ./build.sh          # produces dissertation.pdf
# Options:
#   ENABLE_BIB=0 ./build.sh   # disable bibliography generation (default: enabled)

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chapters_dir="${root_dir}/chapters"
build_dir="${root_dir}/_build"
merged_raw_md="${build_dir}/merged.raw.md"
merged_md="${build_dir}/merged.md"
output_pdf="${root_dir}/dissertation.pdf"
aside_filter="${root_dir}/pandoc/filters/aside.lua"

output_pdf="${root_dir}/dissertation.pdf"
output_pdf_uncompressed="${build_dir}/dissertation.uncompressed.pdf"

mkdir -p "${build_dir}"

# Render Mermaid diagrams (optional).
# If there are no .mmd files, skip cleanly (avoid literal "figures/*.mmd").
shopt -s nullglob
mmd_files=("${root_dir}/figures"/*.mmd)
shopt -u nullglob
if (( ${#mmd_files[@]} > 0 )); then
  mermaid_config="${root_dir}/pandoc/mermaid-config.json"
  if command -v mmdc >/dev/null 2>&1; then
    for f in "${mmd_files[@]}"; do
      # NOTE: if mmdc fails (missing deps, sandboxed env), don't fail the whole build.
      if [[ -f "${mermaid_config}" ]]; then
        mmdc -c "${mermaid_config}" -i "$f" -o "${f%.mmd}.svg" \
          || echo "Warning: mermaid-cli failed for ${f}; leaving existing output as-is." >&2
      else
        mmdc -i "$f" -o "${f%.mmd}.svg" \
          || echo "Warning: mermaid-cli failed for ${f}; leaving existing output as-is." >&2
      fi
    done
  else
    echo "Warning: 'mmdc' not found; skipping Mermaid diagram rendering." >&2
  fi
fi

# Collect chapters in lexical order.
shopt -s nullglob
chapters=("${chapters_dir}"/*.md)
shopt -u nullglob

if (( ${#chapters[@]} == 0 )); then
  echo "No chapters found in ${chapters_dir}" >&2
  exit 1
fi

# Merge chapters into a single temp file.
# Important: ensure at least one blank line between files, even if a chapter
# doesn't end with a trailing newline (otherwise the next chapter's `# ...`
# can get glued to the previous paragraph and stop being parsed as a heading).
: > "${merged_raw_md}"
for f in "${chapters[@]}"; do
  cat "${f}" >> "${merged_raw_md}"
  printf "\n\n" >> "${merged_raw_md}"
done

# Pandoc citeproc places the bibliography at the first `::: {#refs}` block it finds.
# Since chapters may contain their own refs placeholder, strip any `{#refs}` divs
# during merge and add a single bibliography section at the very end.
awk '
  function is_blank(s) { return s ~ /^[[:space:]]*$/ }
  function is_ref_heading(s) {
    # Match headings like: "#### **Použitá literatúra**" (optional bold markers).
    return s ~ /^[[:space:]]*#{1,6}[[:space:]]*(\*\*)?(Použitá literatúra|Zoznam použitej literatúry|Zoznam literatúry|Bibliography|References|Literatúra|Zdroje)(\*\*)?[[:space:]]*$/
  }
  function flush_one(    i) {
    print buf[1]
    for (i = 1; i < buflen; i++) buf[i] = buf[i + 1]
    buflen--
  }
  function flush_all(    i) {
    for (i = 1; i <= buflen; i++) print buf[i]
    buflen = 0
  }
  BEGIN { inrefs = 0; buflen = 0; maxbuf = 20 }
  {
    line = $0

    if (inrefs) {
      if (line ~ /^[[:space:]]*:::[[:space:]]*$/) inrefs = 0
      next
    }

    if (line ~ /^[[:space:]]*:::[[:space:]]*\{#refs\}[[:space:]]*$/) {
      # Drop the refs placeholder and also remove a preceding "References/Bibliography"
      # heading (plus surrounding blank lines) to avoid leaving an empty section
      # inside a chapter.
      while (buflen > 0 && is_blank(buf[buflen])) buflen--
      if (buflen > 0 && is_ref_heading(buf[buflen])) buflen--
      while (buflen > 0 && is_blank(buf[buflen])) buflen--
      flush_all()
      inrefs = 1
      next
    }

    buflen++
    buf[buflen] = line
    if (buflen > maxbuf) flush_one()
  }
  END { flush_all() }
' "${merged_raw_md}" > "${merged_md}"

# Bibliography (enabled by default).
extra_opts=()
if [[ "${ENABLE_BIB:-1}" != "0" ]]; then
  bib="${root_dir}/references.bib"
  if [[ -f "${bib}" ]]; then
    extra_opts+=(--citeproc --bibliography="${bib}")
    [[ -f "${root_dir}/style.csl" ]] && extra_opts+=(--csl="${root_dir}/style.csl")

    cat >> "${merged_md}" <<'EOF'

# Zoznam použitej literatúry

::: {#refs}
:::
EOF
  else
    echo "Warning: references.bib not found; skipping bibliography." >&2
  fi
fi

pandoc "${merged_md}" \
  --from markdown+tex_math_dollars+raw_tex \
  --lua-filter="${aside_filter}" \
  --pdf-engine=xelatex \
  --top-level-division=chapter \
  -V documentclass=report \
  -V mainfont="Charter" \
  -V sansfont="Avenir Next" \
  -V monofont="Menlo" \
  -V fontsize=11pt \
  -V geometry:margin=3cm \
  --include-in-header="${root_dir}/pandoc/preamble.tex" \
  ${extra_opts[@]+"${extra_opts[@]}"} \
  -o "${output_pdf_uncompressed}"

# --- Optional PDF compression (default ON) -------------------------------
# Usage:
#   ./build.sh                      # compressed (default: /printer)
#   FULL=1 ./build.sh               # keep full quality (no GS step)
#   PDFSETTINGS=/screen ./build.sh  # most compressed (lowest quality)
#   PDFSETTINGS=/ebook ./build.sh   # medium compression
#   PDFSETTINGS=/printer ./build.sh # higher quality
#   PDFSETTINGS=/prepress ./build.sh # highest quality (least compression)
if [[ "${FULL:-0}" == "1" ]]; then
  cp -f "${output_pdf_uncompressed}" "${output_pdf}"
  echo "Built (FULL) ${output_pdf}"
else
  if command -v gs >/dev/null 2>&1; then
    pdfsettings="${PDFSETTINGS:-/ebook}"

    gs \
      -sDEVICE=pdfwrite \
      -dCompatibilityLevel=1.6 \
      -dPDFSETTINGS="${pdfsettings}" \
      -dNOPAUSE -dBATCH -dQUIET \
      -sOutputFile="${output_pdf}" \
      "${output_pdf_uncompressed}"

    echo "Built (compressed: ${pdfsettings}) ${output_pdf}"
  else
    # Fallback: no gs installed, keep uncompressed
    cp -f "${output_pdf_uncompressed}" "${output_pdf}"
    echo "Warning: 'gs' not found; produced uncompressed ${output_pdf}" >&2
  fi
fi
# ------------------------------------------------------------------------
