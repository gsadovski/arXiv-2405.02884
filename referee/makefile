##########################################
## REPLY TO REFEREE MAKEFILE            ##
## Author: Guilherme Sadovski           ##
## Contact: guilhermesadovski@gmail.com ##
## Date: 2025-04-24                     ##
##########################################

###########
# MD->PDF #
###########

# DEFINITION OF VARIABLES #
MDS = $(wildcard *.md)
MD2PDF = $(MDS:%.md=%.pdf)
PDFS = $(wildcard $(MD2PDF))
OUT_DIR = $(CLOUD)/work/research/sadovski2024b
JOURNAL = epjc

MD2ALL_DEFAULTS = --defaults=md2all.yaml
MD2PDF_DEFAULTS = --defaults=md2pdf.yaml
CUSTOM_METADATA = --metadata-file=replies.yaml

# CONVERSIONS #
%.pdf: %.md
	pandoc \
		$(MD2ALL_DEFAULTS) \
		$(MD2PDF_DEFAULTS) \
		$(CUSTOM_METADATA) \
		-o $@ < $<

#####################
# PHONY CONVERSIONS #
#####################
all: $(MD2PDF) 

open: $(PDFS)
	$(PDFVIEWER) $(PDFS) \
	>/dev/null &

move:
	mv -f $(PDFS) $(OUT_DIR)/$(JOURNAL).$(PDFS)

clean: 
	rm -f $(PDFS)

quit-md: move clean

.PHONY: all open move clean clean-tex clean-pdf clean-aux quit-md
