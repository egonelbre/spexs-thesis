#!/bin/bash
#latex main && bibtex main && latex main && latex main
rm -rf build/*
cp -r *.tex *.bib chapters figures diagrams appendices build
cd build
FLAGS="-draftmode"
pdflatex $FLAGS --shell-escape main
biber main
pdflatex $FLAGS main
pdflatex -quiet main

cp main.pdf ../Thesis.pdf

echo -e "\n"