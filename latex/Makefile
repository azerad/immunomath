# Makefile for IMMUN4CARE LaTeX document

# Main document name (without .tex extension)
MAIN = main

# LaTeX compiler
LATEX = pdflatex
BIBTEX = bibtex

# Default target
.PHONY: all
all: $(MAIN).pdf

# Compile the PDF (single pass)
.PHONY: quick
quick:
	$(LATEX) $(MAIN).tex

# Full compilation with bibliography
$(MAIN).pdf: $(MAIN).tex
	$(LATEX) $(MAIN).tex
	-$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex

# Clean auxiliary files
.PHONY: clean
clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.fls *.fdb_latexmk

# Clean everything including PDF
.PHONY: cleanall
cleanall: clean
	rm -f $(MAIN).pdf

# View the PDF (requires a PDF viewer)
.PHONY: view
view: $(MAIN).pdf
	@if command -v xdg-open > /dev/null; then \
		xdg-open $(MAIN).pdf; \
	elif command -v open > /dev/null; then \
		open $(MAIN).pdf; \
	else \
		echo "No PDF viewer found. Please open $(MAIN).pdf manually."; \
	fi

.PHONY: help
help:
	@echo "Available targets:"
	@echo "  all      - Build the PDF with full compilation (default)"
	@echo "  quick    - Quick compilation (single pass)"
	@echo "  clean    - Remove auxiliary files"
	@echo "  cleanall - Remove all generated files including PDF"
	@echo "  view     - Open the PDF after building"
	@echo "  help     - Show this help message"
