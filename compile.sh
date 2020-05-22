#!/bin/bash
pandoc README.md -o ibg_rc_cheatsheet.pdf -V documentclass=extreport -V fontsize=9pt -H header.sty 
