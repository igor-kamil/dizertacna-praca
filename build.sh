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

mkdir -p "${build_dir}"

# Collect chapters in lexical order.
shopt -s nullglob
chapters=("${chapters_dir}"/*.md)
shopt -u nullglob

if (( ${#chapters[@]} == 0 )); then
  echo "No chapters found in ${chapters_dir}" >&2
  exit 1
fi

# Merge chapters into a single temp file.
printf "%s\n" "${chapters[@]}" | xargs cat > "${merged_md}"

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
  --pdf-engine=xelatex \
  -V mainfont="Charter" \
  -V sansfont="Avenir Next" \
  -V monofont="Menlo" \
  -V fontsize=11pt \
  -V geometry:margin=3cm \
  -V header-includes="\\usepackage{newunicodechar}" \
  -V header-includes="\\newunicodechar{→}{\\ensuremath{\\rightarrow}}" \
  ${extra_opts[@]+"${extra_opts[@]}"} \
  -o "${output_pdf}"

echo "Built ${output_pdf}"
