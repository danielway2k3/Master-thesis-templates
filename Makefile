# Makefile for HCMUS Thesis Template
# Author: Nguyen Cong Tien Dung
# Copyright: © 2025 Nguyen Cong Tien Dung

# Main document name (without .tex extension)
MAIN = main

# LaTeX compiler
LATEX = pdflatex
BIBTEX = bibtex

# Directories
BUILD_DIR = build
OUTPUT_DIR = output

# Default target
all: $(MAIN).pdf

# Build the PDF
$(MAIN).pdf: $(MAIN).tex
	@echo "Building $(MAIN).pdf..."
	$(LATEX) $(MAIN).tex
	@if grep -q "\\\\bibliography{" $(MAIN).tex; then \
		echo "Building bibliography..."; \
		$(BIBTEX) $(MAIN); \
		$(LATEX) $(MAIN).tex; \
	fi
	$(LATEX) $(MAIN).tex
	@echo "Build complete: $(MAIN).pdf"

# Quick build (single pass, no bibliography)
quick: $(MAIN).tex
	@echo "Quick build..."
	$(LATEX) $(MAIN).tex
	@echo "Quick build complete: $(MAIN).pdf"

# Build with bibliography
bib: $(MAIN).tex
	@echo "Building with bibliography..."
	$(LATEX) $(MAIN).tex
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex
	@echo "Bibliography build complete: $(MAIN).pdf"

# Clean auxiliary files
clean:
	@echo "Cleaning auxiliary files..."
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz
	rm -f Chuong*/*.aux
	@echo "Clean complete"

# Clean all including PDF
cleanall: clean
	@echo "Cleaning all files including PDF..."
	rm -f $(MAIN).pdf
	@echo "Clean all complete"

# Watch mode (requires entr or inotify-tools)
watch:
	@echo "Watching for changes (press Ctrl+C to stop)..."
	@if command -v entr >/dev/null 2>&1; then \
		find . -name "*.tex" -o -name "*.bib" | entr -c make quick; \
	elif command -v inotifywait >/dev/null 2>&1; then \
		while true; do \
			inotifywait -e modify *.tex **/*.tex *.bib 2>/dev/null; \
			make quick; \
		done; \
	else \
		echo "Please install 'entr' or 'inotify-tools' for watch mode"; \
		echo "Ubuntu/Debian: sudo apt-get install entr"; \
		echo "macOS: brew install entr"; \
	fi

# Count words (requires texcount)
count:
	@if command -v texcount >/dev/null 2>&1; then \
		echo "Word count:"; \
		texcount -total $(MAIN).tex; \
	else \
		echo "Please install 'texcount' for word counting"; \
		echo "Ubuntu/Debian: sudo apt-get install texcount"; \
		echo "macOS: brew install texcount"; \
	fi

# Spell check (requires aspell)
spell:
	@if command -v aspell >/dev/null 2>&1; then \
		echo "Spell checking..."; \
		aspell -t -c $(MAIN).tex; \
		for file in Chuong*/*.tex; do \
			echo "Checking $$file..."; \
			aspell -t -c "$$file"; \
		done; \
	else \
		echo "Please install 'aspell' for spell checking"; \
		echo "Ubuntu/Debian: sudo apt-get install aspell"; \
		echo "macOS: brew install aspell"; \
	fi

# Create archive for submission
archive:
	@echo "Creating archive..."
	@DATE=$$(date +%Y%m%d); \
	tar -czf "$(MAIN)-$$DATE.tar.gz" \
		--exclude="*.pdf" \
		--exclude="*.aux" \
		--exclude="*.bbl" \
		--exclude="*.blg" \
		--exclude="*.log" \
		--exclude="*.out" \
		--exclude="*.toc" \
		--exclude="*.lof" \
		--exclude="*.lot" \
		--exclude="*.fls" \
		--exclude="*.fdb_latexmk" \
		--exclude="*.synctex.gz" \
		--exclude=".git*" \
		*.tex *.bib Chuong*/ images/ Logo/ README.md Makefile; \
	echo "Archive created: $(MAIN)-$$DATE.tar.gz"

# Show help
help:
	@echo "HCMUS Thesis Template - Available commands:"
	@echo "  make          - Build the complete document with bibliography"
	@echo "  make quick    - Quick build (single pass, no bibliography)"
	@echo "  make bib      - Build with bibliography (full process)"
	@echo "  make clean    - Remove auxiliary files"
	@echo "  make cleanall - Remove all files including PDF"
	@echo "  make watch    - Watch for changes and auto-rebuild"
	@echo "  make count    - Count words (requires texcount)"
	@echo "  make spell    - Spell check (requires aspell)"
	@echo "  make archive  - Create submission archive"
	@echo "  make help     - Show this help message"

# Phony targets
.PHONY: all quick bib clean cleanall watch count spell archive help
