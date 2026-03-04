#!/usr/bin/env bash
set -euo pipefail

# Publishing Pandoc -> PDF build for dissertation (B5 variant).
# Usage: ./build_publish.sh

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chapters_dir="${root_dir}/chapters"
build_dir="${root_dir}/_build"
merged_md="${build_dir}/merged.publish.md"
defaults_file="${root_dir}/pandoc/publish.defaults.yaml"
output_pdf="${root_dir}/dissertation.publish.b5.pdf"
output_pdf_uncompressed="${build_dir}/dissertation.publish.b5.uncompressed.pdf"

mkdir -p "${build_dir}"
rm -f "${merged_md}"

shopt -s nullglob
# Use CHAPTER_PATTERN env var to build only specific chapters (e.g. CHAPTER_PATTERN="06" ./build_publish.sh)
pattern="${CHAPTER_PATTERN:-*}"
chapters=("${chapters_dir}"/${pattern}_*.md)
if [[ "${pattern}" == "*" ]]; then
  chapters=("${chapters_dir}"/*.md)
fi
shopt -u nullglob

if (( ${#chapters[@]} == 0 )); then
  echo "No chapters found in ${chapters_dir}" >&2
  exit 1
fi

for f in "${chapters[@]}"; do
  cat "${f}" >> "${merged_md}"
  printf "\n\n" >> "${merged_md}"
done

# Ensure relative font paths in LaTeX preamble resolve from repository root.
cd "${root_dir}"

pandoc "${merged_md}" --defaults="${defaults_file}" -o "${output_pdf_uncompressed}"

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
