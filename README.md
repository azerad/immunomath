# immunomath
a repo to interact with colleagues on the project IHU IMMUN4CARE WP1-3

## LaTeX Collaborative Project

This repository contains the LaTeX source files for the collaborative research document.

### Requirements

To compile the document, you need:
- A LaTeX distribution (e.g., TeX Live, MiKTeX, or MacTeX)
- Basic LaTeX packages: amsmath, graphicx, hyperref, cite

### Building the Document

#### Using Make (Recommended)

```bash
# Compile the PDF document
make pdf

# Quick compile (single pass, no bibliography)
make quick

# Clean auxiliary files
make clean

# Clean everything including PDF
make distclean
```

#### Manual Compilation

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

### Project Structure

- `main.tex` - Main LaTeX document
- `references.bib` - Bibliography file (BibTeX format)
- `Makefile` - Build automation

### Contributing

1. Edit the relevant `.tex` files
2. Add references to `references.bib` in BibTeX format
3. Compile and verify the document builds correctly
4. Commit your changes with descriptive messages
5. Push to the repository

### Collaboration Guidelines

- Use TODO comments to mark sections that need work
- Keep commits focused and well-documented
- Test compilation before pushing changes
- Add references to `references.bib` as you use them
