# HCMUS Master Thesis Template

A comprehensive LaTeX template for master thesis reports at Ho Chi Minh City University of Natural Sciences (HCMUS), Vietnam.

## Overview

This template provides a professional structure for writing master thesis reports following HCMUS formatting requirements. It includes proper Vietnamese language support, standard academic formatting, and a well-organized chapter structure.

## Features

- 🇻🇳 **Vietnamese Support**: Full UTF-8 and Vietnamese language support
- 📚 **Complete Structure**: Cover page, acknowledgements, abstract, chapters, and references
- 📊 **Academic Elements**: Support for tables, figures, equations, and citations
- 🎨 **Professional Layout**: Clean, readable formatting with proper margins and spacing
- 🔧 **Easy to Use**: Well-organized file structure with clear documentation

## Quick Start

### Prerequisites

You need a LaTeX distribution installed on your system:
- **Linux**: `sudo apt-get install texlive-full`
- **macOS**: Install MacTeX from [tug.org/mactex](https://tug.org/mactex/)
- **Windows**: Install MiKTeX from [miktex.org](https://miktex.org/)

### Build the Document

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/hcmus-thesis-template.git
   cd hcmus-thesis-template
   ```

2. **Build using Make** (recommended):
   ```bash
   make
   ```

3. **Or build manually**:
   ```bash
   pdflatex main.tex
   bibtex main
   pdflatex main.tex
   pdflatex main.tex
   ```

4. **Clean build files**:
   ```bash
   make clean
   ```

## File Structure

```
├── main.tex                 # Main document file
├── preamble.tex            # Package imports and settings
├── cover_page.tex          # Title page
├── acknowledgements.tex    # Acknowledgements section
├── abstract.tex           # Abstract section
├── references.bib         # Bibliography database
├── Chuong1/               # Chapter 1
│   └── chapter1.tex
├── Chuong2/               # Chapter 2
│   └── chapter2.tex
├── Chuong3/               # Chapter 3
│   └── chapter3.tex
├── Chuong4/               # Chapter 4
│   └── chapter4.tex
├── Chuong5/               # Chapter 5
│   └── chapter5.tex
├── images/                # Image files
│   └── overview_recsys.jpg
├── Logo/                  # University logo
│   └── Logo-KHTN.jpg
├── Makefile              # Build automation
└── README.md             # This file
```

## Customization

### Personal Information

Edit the following files to customize for your thesis:

1. **Cover Page** (`cover_page.tex`):
   - Update thesis title
   - Add your name and student ID
   - Modify department/program information

2. **Acknowledgements** (`acknowledgements.tex`):
   - Write your acknowledgements

3. **Abstract** (`abstract.tex`):
   - Add your abstract in Vietnamese and English

### Content

- **Chapters**: Edit files in `Chuong1/`, `Chuong2/`, etc.
- **References**: Add your bibliography entries to `references.bib`
- **Images**: Place image files in the `images/` directory

### Formatting

- **Page Layout**: Modify margins and spacing in `preamble.tex`
- **Font Settings**: Adjust font family and sizes in `preamble.tex`
- **Citation Style**: Change bibliography style in `main.tex`

## Usage Tips

1. **Images**: Use relative paths and place images in the `images/` folder
2. **References**: Use BibTeX format in `references.bib`
3. **Equations**: Use standard LaTeX math environments
4. **Tables**: Use `tabularx` and `booktabs` packages for professional tables
5. **Cross-references**: Use `\label{}` and `\ref{}` for automatic numbering

## Examples

### Adding a Figure
```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.8\textwidth]{images/your-image.jpg}
    \caption{Your caption here}
    \label{fig:your-label}
\end{figure}
```

### Adding a Table
```latex
\begin{table}[H]
    \centering
    \caption{Your table caption}
    \begin{tabularx}{\textwidth}{|l|X|}
        \hline
        \textbf{Column 1} & \textbf{Column 2} \\
        \hline
        Data 1 & Data 2 \\
        \hline
    \end{tabularx}
    \label{tab:your-label}
\end{table}
```

### Citations
```latex
% In references.bib
@article{author2023,
    title={Article Title},
    author={Author Name},
    journal={Journal Name},
    year={2023}
}

% In your text
According to \cite{author2023}, ...
```

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests to improve this template.

## License

This template is licensed under the Creative Commons Attribution-NonCommercial 4.0 International License (CC BY-NC 4.0).

## Author

**Nguyen Cong Tien Dung**
- Copyright © 2025 Nguyen Cong Tien Dung
- Template for HCMUS Master Thesis

## Acknowledgments

- Ho Chi Minh City University of Natural Sciences (HCMUS)
- Faculty of Mathematics and Computer Science
- LaTeX community for excellent documentation and packages

---

**Note**: This template is designed specifically for HCMUS thesis requirements. Please verify with your department for any specific formatting requirements that may differ from this template.
