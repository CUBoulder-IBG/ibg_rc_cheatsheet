#!/bin/bash
cat header.md > README.md
cat ibg_rc_cheatsheet.md >> README.md

pandoc README.md -o ibg_rc_cheatsheet.pdf \
	-H header.sty \
	-V documentclass=extreport \
	-V mainfont="DejaVu Sans" \
	-V monofont="Source Code Pro" \
	--latex-engine xelatex \
	-V fontsize=11pt 

cat footer.md >> README.md

bash gh-md-toc --no-backup README.md
