#!/bin/bash
pandoc curc.md -o curc.pdf -V documentclass=extreport -V fontsize=9pt -H header.sty 

cp curc.md README.md

cat footer.txt >> README.md
