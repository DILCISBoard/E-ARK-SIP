#!/usr/bin/env bash
echo "Generating PDF document from markdown"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit

if [ ! -d ~/.pandoc/templates ]
then
  mkdir -p ~/.pandoc/templates
fi
cp spec-publisher/pandoc/templates/eisvogel.latex ~/.pandoc/templates/eisvogel.latex

if [ ! -d "$SCRIPT_DIR/docs/pdf" ]
then
  mkdir -p "$SCRIPT_DIR/docs/pdf/"
fi

bash "$SCRIPT_DIR/spec-publisher/utils/create-venv.sh"
source "$SCRIPT_DIR/.venv/markdown/bin/activate"
markdown-pp PDF.md -o docs/eark-sip-pdf.md -e tableofcontents
deactivate

cd docs || exit
pandoc  --from markdown \
        --template eisvogel \
        --listings \
        --toc \
        eark-sip-pdf.md \
        --metadata-file ../pandoc/metadata.yaml \
        -o pdf/eark-sip.pdf

cd "$SCRIPT_DIR" || exit
