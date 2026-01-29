#!/usr/bin/env bash
set -euo pipefail

# Airy Pandoc → PDF build for the dissertation.
# Usage: ./build.sh

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chapters_dir="${root_dir}/chapters"
build_dir="${root_dir}/_build"
merged_md="${build_dir}/merged.md"
output_pdf="${root_dir}/dissertation.pdf"
output_pdf_uncompressed="${build_dir}/dissertation.uncompressed.pdf"
defaults_file="${root_dir}/pandoc/defaults.yaml"

mkdir -p "${build_dir}"
rm -f "${merged_md}"

# Collect chapters in lexical order and merge.
shopt -s nullglob
chapters=("${chapters_dir}"/*.md)
shopt -u nullglob

if (( ${#chapters[@]} == 0 )); then
  echo "No chapters found in ${chapters_dir}" >&2
  exit 1
fi

for f in "${chapters[@]}"; do
  cat "${f}" >> "${merged_md}"
  printf "\n\n" >> "${merged_md}"
done

# Run Pandoc
pandoc "${merged_md}" --defaults="${defaults_file}" -o "${output_pdf_uncompressed}"

# --- Optional PDF compression (default ON) ---
if [[ "${FULL:-0}" == "1" ]]; then
  cp -f "${output_pdf_uncompressed}" "${output_pdf}"
  echo "Built (FULL) ${output_pdf}"
else
  if command -v gs >/dev/null 2>&1; then
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.6 -dPDFSETTINGS="${PDFSETTINGS:-/ebook}" \
       -dNOPAUSE -dBATCH -dQUIET -sOutputFile="${output_pdf}" "${output_pdf_uncompressed}"
    echo "Built (compressed) ${output_pdf}"
  else
    cp -f "${output_pdf_uncompressed}" "${output_pdf}"
    echo "Warning: 'gs' not found; produced uncompressed ${output_pdf}" >&2
  fi
fi
