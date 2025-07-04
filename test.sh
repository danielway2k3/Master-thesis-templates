#!/bin/bash

# Simple test script to verify the template structure
echo "🧪 Testing HCMUS Thesis Template Structure"
echo "=========================================="

# Check if main files exist
files_to_check=(
    "main.tex"
    "preamble.tex"
    "cover_page.tex"
    "acknowledgements.tex"
    "abstract.tex"
    "references.bib"
    "Makefile"
    "README.md"
)

echo "📋 Checking essential files..."
all_files_exist=true

for file in "${files_to_check[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file"
    else
        echo "❌ $file (missing)"
        all_files_exist=false
    fi
done

# Check directories
directories_to_check=(
    "Chuong1"
    "Chuong2"
    "Chuong3"
    "Chuong4"
    "Chuong5"
    "images"
    "Logo"
)

echo ""
echo "📁 Checking directories..."
for dir in "${directories_to_check[@]}"; do
    if [ -d "$dir" ]; then
        echo "✅ $dir/"
    else
        echo "❌ $dir/ (missing)"
        all_files_exist=false
    fi
done

# Check chapter files
echo ""
echo "📄 Checking chapter files..."
for i in {1..5}; do
    chapter_file="Chuong$i/chapter$i.tex"
    if [ -f "$chapter_file" ]; then
        echo "✅ $chapter_file"
    else
        echo "❌ $chapter_file (missing)"
        all_files_exist=false
    fi
done

# Test LaTeX installation
echo ""
echo "🔧 Checking LaTeX installation..."
if command -v pdflatex >/dev/null 2>&1; then
    echo "✅ pdflatex is installed"
    pdflatex --version | head -1
    
    if command -v bibtex >/dev/null 2>&1; then
        echo "✅ bibtex is installed"
    else
        echo "⚠️ bibtex not found (bibliography may not work)"
    fi
else
    echo "❌ pdflatex not found"
    echo "   Please install LaTeX using:"
    echo "   - Ubuntu/Debian: sudo apt-get install texlive-full"
    echo "   - macOS: Install MacTeX from https://tug.org/mactex/"
    echo "   - Or run: ./setup.sh"
fi

echo ""
if [ "$all_files_exist" = true ]; then
    echo "🎉 Template structure is complete!"
    echo "   You can now customize the template for your thesis."
else
    echo "❌ Some files are missing. Please check the template."
    exit 1
fi
