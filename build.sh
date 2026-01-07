#!/usr/bin/env bash
set -euo pipefail

# Airy Pandoc → PDF build for the dissertation.
# Usage:
#   chmod +x build.sh   # once
#   ./build.sh          # produces dissertation.pdf
# Options:
#   ENABLE_BIB=1 ./build.sh   # include references.bib with citeproc (optional)

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chapters_dir="${root_dir}/chapters"
build_dir="${root_dir}/_build"
merged_md="${build_dir}/merged.md"
output_pdf="${root_dir}/dissertation.pdf"
aside_filter="${root_dir}/pandoc/filters/aside.lua"

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
cat "${chapters[@]}" > "${merged_md}"

# Optional bibliography.
extra_opts=()
if [[ "${ENABLE_BIB:-0}" == "1" && -f "${root_dir}/references.bib" ]]; then
  extra_opts+=(--citeproc --bibliography="${root_dir}/references.bib")
  if [[ -f "${root_dir}/style.csl" ]]; then
    extra_opts+=(--csl="${root_dir}/style.csl")
  fi
fi

pandoc "${merged_md}" \
  --from markdown+tex_math_dollars+raw_tex \
  --lua-filter="${aside_filter}" \
  --pdf-engine=xelatex \
  -V mainfont="Charter" \
  -V sansfont="Avenir Next" \
  -V monofont="Menlo" \
  -V fontsize=11pt \
  -V geometry:margin=3cm \
  -V header-includes="\\usepackage{newunicodechar}" \
  -V header-includes="\\newunicodechar{→}{\\ensuremath{\\rightarrow}}" \
  -V header-includes="\\usepackage{xcolor}" \
  -V header-includes="\\usepackage[most]{tcolorbox}" \
  -V header-includes="\\tcbset{before skip=6pt, after skip=6pt}" \
  -V header-includes="\\newtcolorbox{aside}{enhanced,breakable,colback=white,colframe=gray!60,boxrule=0.5pt,arc=1mm,left=4mm,right=4mm,top=2mm,bottom=2mm,before skip=10pt,after skip=10pt,before upper=\\small}" \
  ${extra_opts[@]+"${extra_opts[@]}"} \
  -o "${output_pdf}"

echo "Built ${output_pdf}"
