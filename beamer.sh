#!/bin/bash
inputFile=presentation.md
outputFile=presentation-slides.pdf
preamble=lib/preamble-slides.tex
template=lib/default.beamer
#biblio=--bibliography=$BIBLIO 

 echo "Compile slides... "
 pandoc -f markdown-implicit_figures -t beamer $inputFile --include-in-header=$preamble  --template=$template -o $outputFile
 echo "...done!"

#open -a Skim $outputFile
