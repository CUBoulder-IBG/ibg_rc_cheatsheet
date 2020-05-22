#!/bin/bash
cat header.md > README.md
./gh-md-toc ibg_rc_cheatsheet.md >> README.md
cat ibg_rc_cheatsheet.md >> README.md
pandoc README.md -o ibg_rc_cheatsheet.pdf -V documentclass=extreport -V fontsize=9pt -H header.sty 
