#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit
rm -rf docs/images
rm docs/index.md
bash "$SCRIPT_DIR/spec-publisher/utils/create-venv.sh"
source "$SCRIPT_DIR/.venv/markdown/bin/activate"
markdown-pp SITE.md -o docs/index.md
deactivate
cp -R specification/images docs/
cd docs || exit
bundle install
bundle exec jekyll build
bundle exec htmlproofer ./_site --file-ignore /javadoc/ --only-4xx --check-html
