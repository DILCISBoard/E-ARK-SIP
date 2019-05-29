#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit
bash "$SCRIPT_DIR/spec-publisher/utils/create-venv.sh"
source "$SCRIPT_DIR/.venv/markdown/bin/activate"
markdown-pp PDF.md -o specification/eark-sip-pdf.md
cd specification || exit
pandoc  --from markdown-markdown_in_html_blocks \
        --template eisvogel \
        --listings \
        --toc \
        eark-sip-pdf.md \
        "$SCRIPT_DIR/pandoc/metadata.yaml" \
        -o "$SCRIPT_DIR/published/pdf/eark-sip.pdf"
deactivate
