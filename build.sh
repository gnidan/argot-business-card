#!/bin/sh
# Build card.pdf and card.jpg (6000 dpi) from card.tex and Argot.svg
set -e
rsvg-convert -f pdf -o Argot.pdf Argot.svg
pdflatex -interaction=nonstopmode card.tex >/dev/null
pdflatex -interaction=nonstopmode card.tex >/dev/null
# pdftoppm -jpeg -jpegopt quality=95 -r 6000 -singlefile card.pdf card
