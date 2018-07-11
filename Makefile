OBJ    := resume
LATEX  := pdflatex
BIBTEX := bibtex

document:
	$(LATEX)  $(OBJ)
	$(LATEX)  $(OBJ)

# Cleanup of temporary files. Type 'make clean' to remove temporaries.

TEMPS := *.aux *.bbl *.blg *.dvi *.log *.pdf *.ps *.lof *.lot *.toc *.fls
clean:
	@echo Cleaning temporary files.
	@rm -f $(TEMPS) $(addprefix ./data/, $(TEMPS))
