#!/usr/bin/env bash
echo "Generating GitHub pages site from markdown"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit

if [ ! -d ./docs ]
then
  echo " - creating docs directory"
  mkdir ./docs
fi

if [ -d ./docs/figs ]
then
  echo " - removing existing figs directory"
  rm -rf ./docs/figs
fi

if [ -d ./docs/images ]
then
  echo " - removing existing images directory"
  rm -rf ./docs/images
fi

if [ -e ./docs/index.md ]
then
  rm docs/index.md
fi

if [ -d ./docs/_data ]
then
  echo " - removing existing menu data"
  rm -rf ./docs/_data
fi

if [ -d ./docs/_includes ]
then
  echo " - removing existing includes"
  rm -rf ./docs/_includes
fi

if [ -d ./docs/_layouts ]
then
  echo " - removing existing layouts"
  rm -rf ./docs/_layouts
fi

if [ -d ./docs/img ]
then
  echo " - removing existing images"
  rm -rf ./docs/img
fi

if [ -d ./docs/css ]
then
  echo " - removing existing css"
  rm -rf ./docs/css
fi

bash "$SCRIPT_DIR/spec-publisher/utils/create-venv.sh"
command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname "$(mktemp -u)")
  # shellcheck source=/tmp/.venv-markdown/bin/activate
  source "$tmpdir/.venv-markdown/bin/activate"
}
echo " - MARKDOWN-PP: generating temp-site"
markdown-pp SITE_BASE.md -o /tmp/site.md
echo " - MARKDOWN-PP: generating site index.md"
markdown-pp SITE.md -o ./docs/index.md

rm /tmp/site.md

cp -Rf spec-publisher/site/* docs/
find ./docs/_* -type f -exec sed -i 's/CSIP/SIP/' {} \;
find ./docs/_* -type f -exec sed -i 's/csip/sip/' {} \;
cp -R specification/images docs/
cp -R spec-publisher/res/md/figs docs/
cp -R profile docs/
cp -R schema docs/
cp -R archive docs/
cp -R examples docs/
