# SVG to PDF Builder

Combine individual page SVG files multi-page PDFs.

The code creates two files:

- `combined.pdf` - portrait mode, one SVG page per PDF page
- `side-by-side.pdf` - landscape mode, two SVG pages per PDF page

## Based on

https://apple.stackexchange.com/a/438164

## Pre-requisites

```
brew install librsvg
brew install qpdf
brew install mactex
```

## Usage

1. Copy all the SVG files to this directory. Filenames should end with `.svg`
   and be in alphabetical order to ensure the correct page layout.

2. Run `./svg-pages-to-pdf.sh`

3. Move and rename `combined.pdf` and `side-by-side.pdf` to the desired directory.
