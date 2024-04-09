##########################################
## MANUSCRIPT MAKEFILE                  ##
## Author: Guilherme Sadovski           ##
## Contact: guilhermesadovski@gmail.com ##
## Date: 2023/10/27                     ##
##########################################

# DEFINITIONS OF VARIABLES #
TMPNAME=main
JOBNAME = sadovski2023
DESTINY = $(CLOUD)/work/research/sadovski2024

#####################
# PHONY CONVERSIONS #
#####################
move:
	mv -f $(TMPNAME).pdf $(DESTINY)/manuscript.pdf

clean: clean-pdf clean-aux
clean-pdf:
	rm -f  *.pdf
clean-aux:
	rm -f *.bbl *.aux *.log *.bcf *.blg *.out *.run.xml *.toc *.fls *.fdb_latexmk *.synctex.gz

quit-tex: move-pdf clean-pdf clean-aux

.PHONY: move clean clean-pdf clean-aux quit-tex
