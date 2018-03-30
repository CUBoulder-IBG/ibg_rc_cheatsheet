#! /bin/bash
pandoc curc.md -o curc.pdf -H header.sty

cat curc.md > README.md
echo "
### Compiling to pdf 

To compile run `bash compile.sh` (requires pandoc)." >> README.md
