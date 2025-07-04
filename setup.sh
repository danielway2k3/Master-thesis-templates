#!/bin/bash

# HCMUS Thesis Template Setup Script
# This script helps set up the development environment for the thesis template

set -e

echo "🎓 HCMUS Thesis Template Setup"
echo "================================"

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to install packages on Ubuntu/Debian
install_ubuntu() {
    echo "📦 Installing LaTeX packages for Ubuntu/Debian..."
    sudo apt-get update
    sudo apt-get install -y \
        texlive-latex-base \
        texlive-latex-extra \
        texlive-lang-other \
        texlive-lang-vietnamese \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        texlive-bibtex-extra \
        texlive-science \
        texcount \
        aspell \
        aspell-en \
        make
    echo "✅ LaTeX packages installed successfully!"
}

# Function to install packages on macOS
install_macos() {
    echo "📦 Installing LaTeX packages for macOS..."
    if command_exists brew; then
        brew install --cask mactex
        brew install texcount aspell make
        echo "✅ LaTeX packages installed successfully!"
    else
        echo "❌ Homebrew not found. Please install Homebrew first:"
        echo "   /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
        echo "   Then run this script again."
        exit 1
    fi
}

# Function to install packages on Arch Linux
install_arch() {
    echo "📦 Installing LaTeX packages for Arch Linux..."
    sudo pacman -S --noconfirm \
        texlive-most \
        texlive-langother \
        texcount \
        aspell \
        aspell-en \
        make
    echo "✅ LaTeX packages installed successfully!"
}

# Detect operating system
detect_os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        if command_exists apt-get; then
            return 1  # Ubuntu/Debian
        elif command_exists pacman; then
            return 2  # Arch Linux
        else
            return 0  # Unknown Linux
        fi
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        return 3  # macOS
    else
        return 0  # Unknown OS
    fi
}

# Check if LaTeX is already installed
check_latex() {
    if command_exists pdflatex && command_exists bibtex; then
        echo "✅ LaTeX is already installed!"
        pdflatex --version | head -1
        return 0
    else
        echo "❌ LaTeX not found or incomplete installation"
        return 1
    fi
}

# Main installation function
main() {
    echo "🔍 Checking current installation..."
    
    if check_latex; then
        echo ""
        echo "🎉 Your system is ready!"
        echo "   You can now build the thesis with: make"
        echo "   Or get help with: make help"
        return 0
    fi
    
    echo ""
    echo "📋 Detecting operating system..."
    
    detect_os
    os_type=$?
    
    case $os_type in
        1)
            echo "🐧 Ubuntu/Debian detected"
            install_ubuntu
            ;;
        2)
            echo "🏛️ Arch Linux detected"
            install_arch
            ;;
        3)
            echo "🍎 macOS detected"
            install_macos
            ;;
        *)
            echo "❓ Unknown operating system"
            echo "Please install LaTeX manually:"
            echo "  - Linux: Install texlive-full package"
            echo "  - macOS: Install MacTeX from https://tug.org/mactex/"
            echo "  - Windows: Install MiKTeX from https://miktex.org/"
            exit 1
            ;;
    esac
    
    echo ""
    echo "🔧 Testing installation..."
    if check_latex; then
        echo ""
        echo "🎉 Installation successful!"
        echo "   You can now build the thesis with: make"
        echo "   Or get help with: make help"
        echo ""
        echo "📝 Next steps:"
        echo "   1. Edit cover_page.tex with your information"
        echo "   2. Write your content in the chapter files"
        echo "   3. Add references to references.bib"
        echo "   4. Build with: make"
    else
        echo ""
        echo "❌ Installation verification failed"
        echo "   Please check the error messages above"
        echo "   You may need to restart your terminal or log out and back in"
        exit 1
    fi
}

# Run the main function
main "$@"
