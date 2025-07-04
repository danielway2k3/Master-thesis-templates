# Quick Start Guide

This guide will help you get started with the HCMUS Thesis Template quickly.

## 🚀 Getting Started (5 minutes)

### 1. Download the Template
```bash
git clone https://github.com/yourusername/hcmus-thesis-template.git
cd hcmus-thesis-template
```

### 2. Install LaTeX (if not already installed)
```bash
# Ubuntu/Debian
sudo apt-get install texlive-full

# Or use the automatic setup script
./setup.sh
```

### 3. Test the Template
```bash
# Test the template structure
./test.sh

# Build the document
make
```

## 📝 Customization Checklist

### Essential Changes
- [ ] **Cover Page** (`cover_page.tex`): Update your thesis title, name, and student information
- [ ] **Acknowledgements** (`acknowledgements.tex`): Write your acknowledgements
- [ ] **Abstract** (`abstract.tex`): Add your Vietnamese and English abstracts

### Content Changes
- [ ] **Chapter 1** (`Chuong1/chapter1.tex`): Introduction
- [ ] **Chapter 2** (`Chuong2/chapter2.tex`): Literature Review / Related Work
- [ ] **Chapter 3** (`Chuong3/chapter3.tex`): Methodology
- [ ] **Chapter 4** (`Chuong4/chapter4.tex`): Results and Discussion
- [ ] **Chapter 5** (`Chuong5/chapter5.tex`): Conclusion
- [ ] **References** (`references.bib`): Add your bibliography entries

### Additional Files
- [ ] **Images**: Add your images to the `images/` folder
- [ ] **Logo**: Replace with your department logo if needed

## 🔧 Common Commands

```bash
# Build the complete document
make

# Quick build (no bibliography)
make quick

# Clean auxiliary files
make clean

# Watch for changes and auto-rebuild
make watch

# Get help
make help
```

## 📖 Common LaTeX Elements

### Adding an Image
```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.8\textwidth]{images/your-image.jpg}
    \caption{Your caption}
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

### Adding a Reference
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

### Cross-referencing
```latex
% Reference a figure
See Figure \ref{fig:your-label}

% Reference a table
As shown in Table \ref{tab:your-label}

% Reference a chapter
Chapter \ref{chap:introduction}
```

## 🎯 Tips for Success

1. **Start Simple**: Begin with the basic structure and gradually add content
2. **Build Frequently**: Use `make quick` to test your changes regularly
3. **Use Comments**: Add comments in your LaTeX code for complex sections
4. **Version Control**: Commit your changes regularly with Git
5. **Backup**: Keep backups of your work in multiple locations

## 🆘 Troubleshooting

### Common Issues

**Build fails with "command not found"**
- Install LaTeX using `./setup.sh` or manually install texlive

**Vietnamese characters not displaying**
- Ensure your files are saved in UTF-8 encoding
- Check that the `\usepackage[vietnamese]{babel}` is in preamble.tex

**Bibliography not appearing**
- Run `make bib` instead of `make quick`
- Check that your references.bib file has valid entries

**Images not displaying**
- Ensure image files are in the `images/` folder
- Use relative paths: `images/filename.jpg`
- Supported formats: PDF, PNG, JPG

### Getting Help

1. Check the full [README.md](README.md) for detailed instructions
2. Look at the [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines
3. Create an issue on GitHub if you find bugs or need help
4. Test your setup with `./test.sh`


Happy writing! 🎓
