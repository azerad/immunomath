# immunomath
a repo to interact with colleagues on the project IHU IMMUN4CARE WP1-3

## LaTeX Documentation

This repository includes LaTeX documentation for mathematical models related to the IMMUN4CARE project.

### Structure

```
latex/
├── main.tex                    # Main LaTeX document
└── figures/                    # Directory containing figures
    ├── immune_response.png     # Time course of immune response
    └── parameter_sensitivity.png  # Parameter sensitivity analysis
```

### Compiling the LaTeX Document

Using the Makefile (recommended):

```bash
cd latex
make          # Full compilation
make quick    # Quick single-pass compilation
make clean    # Remove auxiliary files
make view     # Build and view PDF
```

Manual compilation:

```bash
cd latex
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

### Contents

The `main.tex` document includes:
- Mathematical models for immune system dynamics
- Differential equation formulations
- Figures showing simulation results
- Parameter sensitivity analyses
- Framework for collaborative research
