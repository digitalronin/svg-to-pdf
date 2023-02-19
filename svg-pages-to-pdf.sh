#!/bin/bash

# https://stackoverflow.com/a/38602749/794111

set -euo pipefail

main() {
  convert_svg_to_pdf_pages
  combine_pdf_pages
  create_side_by_side_pdf
}


# Generate page1.pdf to pageN.pdf from *.svg
convert_svg_to_pdf_pages() {
  pages=($(ls -1 *.svg))

  for ((i = 0; i < ${#pages[@]}; ++i)); do
      index=$(( $i + 1 ))
      svg_file=${pages[$i]}
      outfile="page${index}.pdf"
      rsvg-convert -f pdf -o $outfile $svg_file
  done
}

# Combine page1.pdf to pageN.pdf into combined.pdf
combine_pdf_pages() {
  qpdf --empty --pages page*.pdf -- combined.pdf
}

# Combine page1.pdf to pageN.pdf into side-by-side.pdf, which is a landscape
# formatted document that has two source pages side by side on each page
create_side_by_side_pdf() {
  pdfjam --landscape --nup 2x1 --outfile side-by-side.pdf page*.pdf
}

main
