#!/bin/bash

# Settings
input=content.md
output=slide-deck.pdf
yaml=config.yml
preamble="--include-in-header=lib/preamble-slides.tex"
if [ $# -gt 0 ]; then
   input=$1
fi

# Compile
pandoc --latex-engine=xelatex -t beamer $yaml $input $preamble --filter pandoc-citeproc -o $output

# Logs
now=$(date +"%Y-%m-%d-h%Hm%M")
cp $input _logs/slides.$now.md
