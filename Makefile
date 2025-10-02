# Makefile for LaTeX document compilation

# Main document name (without .tex extension)
MAIN = main

# LaTeX compiler
LATEX = pdflatex
BIBTEX = bibtex

# Compilation flags
LATEXFLAGS = -interaction=nonstopmode -halt-on-error

.PHONY: all clean distclean pdf view

# Default target: compile the PDF
all: pdf

# Compile PDF (run multiple times for references)
pdf: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex references.bib
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	$(BIBTEX) $(MAIN)
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex

# Quick compile (single pass, no bibliography)
quick:
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex

# View the generated PDF (requires a PDF viewer)
view: $(MAIN).pdf
	@if command -v xdg-open > /dev/null; then \
		xdg-open $(MAIN).pdf; \
	elif command -v open > /dev/null; then \
		open $(MAIN).pdf; \
	else \
		echo "No PDF viewer found. Please open $(MAIN).pdf manually."; \
	fi

# Clean auxiliary files
clean:
	rm -f *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof
	rm -f *.synctex.gz *.fdb_latexmk *.fls
	rm -f *.nav *.snm *.vrb

# Clean everything including the PDF
distclean: clean
	rm -f $(MAIN).pdf
