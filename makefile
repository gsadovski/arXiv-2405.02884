##########################################
## MANUSCRIPT MAKEFILE                  ##
## Author: Guilherme Sadovski           ##
## Contact: guilhermesadovski@gmail.com ##
## Date: 2024/05/03                     ##
##########################################

############################
# DEFINITIONS OF VARIABLES #
############################
TMPNAME=main
JOBNAME = sadovski2025a
DESTINY = $(CLOUD)/work/research/$(JOBNAME)

###############
# CONVERSIONS #
###############

bib:
	biber \
		--output-format=bibtex \
		--output-file=library.bib \
		*.bcf

#####################
# PHONY CONVERSIONS #
#####################
move:
	mv -f $(TMPNAME).pdf $(DESTINY)/manuscript.pdf

clean: clean-pdf clean-aux
clean-pdf:
	rm -f  *.pdf
clean-aux:
	rm -f *.bbl *.bbl-SAVE-ERROR *.aux *.log *.bcf *.bcf-SAVE-ERROR *.blg *.out *.run.xml *.toc *.fls *.fdb_latexmk *.synctex.gz

quit-tex: move-pdf clean-pdf clean-aux

.PHONY: move clean clean-pdf clean-aux quit-tex
