#!/usr/bin/env bash
set -euo pipefail

# Simple Pandoc -> PDF build for autoreferat.
# Usage: ./build_autoreferat.sh

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
build_dir="${root_dir}/_build"
input_md="${root_dir}/autoreferat.md"
defaults_file="${root_dir}/pandoc/autoreferat.defaults.yaml"
output_pdf="${root_dir}/autoreferat.pdf"
output_pdf_uncompressed="${build_dir}/autoreferat.uncompressed.pdf"

mkdir -p "${build_dir}"

if [[ ! -f "${input_md}" ]]; then
  echo "Missing input file: ${input_md}" >&2
  exit 1
fi

pandoc "${input_md}" --defaults="${defaults_file}" -o "${output_pdf_uncompressed}"

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
