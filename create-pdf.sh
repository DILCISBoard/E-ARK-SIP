#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit

echo "Generating PDF from markdown"
bash "$SCRIPT_DIR/spec-publisher/utils/create-venv.sh"

command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname $(mktemp -u))
  source "$tmpdir/.venv-markdown/bin/activate"
}
echo " - MARKDOWN-PP: Processing postface markdown"
cd "./specification/postface/"
markdown-pp postface-pdf.md -o "$SCRIPT_DIR/docs/postface.md" -e tableofcontents

cd "$SCRIPT_DIR/docs" || exit

###
# Pandoc options:
# --from markdown \                               # Source fromat Markdown
# --template ../pandoc/templates/eisvogel.latex \ # Use this latex template
# --listings \                                    # Use listings package for code blocks
# --table-of-contents \                           # Generate table of contents
# --metadata-file ../pandoc/metadata.yaml \       # Additional Pandoc metadata
# --include-before-body "../spec-publisher/res/md/common-intro.md" \
# --include-after-body "../specification/postface/postface.md" \
# --number-sections \                             # Generate Heading Numbers
# eark-csip-pdf.md \                              # Input Markdown file
# -o ./pdf/eark-csip.pdf                          # PDF Destinaton
echo " - PANDOC: Generating Preface from markdown"
pandoc  --from gfm \
        --to latex \
        --metadata-file "../spec-publisher/pandoc/metadata.yaml" \
        "../spec-publisher/res/md/common-intro.md" \
        -o ./preface.tex
sed -i 's%fig_1_dip.svg%fig_1_dip.png%' ./preface.tex
sed -i 's%section{%section*{%' ./preface.tex

echo " - PANDOC: Generating Postface from markdown"
pandoc  --from markdown \
        --to latex \
        --metadata-file "../spec-publisher/pandoc/metadata.yaml" \
        "./postface.md" \
        -o ./postface.tex
sed -i 's%section{%section*{%' ./postface.tex

rm postface.md

if [ ! -d "$SCRIPT_DIR/docs/pdf" ]
then
  mkdir -p "$SCRIPT_DIR/docs/pdf/"
fi

cd "$SCRIPT_DIR" || exit

command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname $(mktemp -u))
  source "$tmpdir/.venv-markdown/bin/activate"
}
echo " - MARKDOWN-PP: Preparing PDF markdown"
markdown-pp PDF.md -o docs/eark-sip-pdf.md -e tableofcontents

cp -R specification/images docs/
cp -R spec-publisher/res/md/figs docs/

cd docs || exit

###
# Pandoc options:
# --from markdown \                               # Source fromat Markdown
# --template ../pandoc/templates/eisvogel.latex \ # Use this latex template
# --listings \                                    # Use listings package for code blocks
# --table-of-contents \                           # Generate table of contents
# --metadata-file ../pandoc/metadata.yaml \       # Additional Pandoc metadata
# --include-before-body "../spec-publisher/res/md/common-intro.md" \
# --include-after-body "../specification/postface/postface.md" \
# --number-sections \                             # Generate Heading Numbers
# eark-sip-pdf.md \                              # Input Markdown file
# -o ./pdf/eark-csip.pdf                          # PDF Destinaton
echo "PANDOC: Generating PDF document from markdown"
pandoc  --from markdown \
        --template "../spec-publisher/pandoc/templates/eisvogel.latex" \
        --listings \
        --table-of-contents \
        --metadata-file "../spec-publisher/pandoc/metadata.yaml" \
        --include-before-body "./preface.tex" \
        --include-after-body "./postface.tex" \
        --number-sections \
        eark-sip-pdf.md \
        -o "./pdf/eark-sip.pdf"
echo "PANDOC: Finished"

rm postface.tex preface.tex eark-sip-pdf.md

cd "$SCRIPT_DIR" || exit
# if [ -e docs/eark-csip-pdf.md ]
# then
#   rm docs/eark-csip-pdf.md
# fi
