#!/usr/bin/env bash
echo "Generating GitHub pages site from markdown"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit

echo " - Cleaning up site directory and copying spec-publisher site..."
git clean -f doc/ site/ specification/
cp -rf spec-publisher/site/* site/

mvn package -f spec-publisher/pom.xml
java -jar ./spec-publisher/target/mets-profile-processor-0.2.0-SNAPSHOT.jar -f ./specification.yaml -o doc/site profile/E-ARK-SIP-v2-2-0.xml

bash "$SCRIPT_DIR/spec-publisher/scripts/create-venv.sh"
command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname "$(mktemp -u)")
  # shellcheck source=/tmp/.venv-markdown/bin/activate
  source "$tmpdir/.venv-markdown/bin/activate"
}
echo " - MARKDOWN-PP: Processing postface markdown"
cd "$SCRIPT_DIR/specification/postface/" || exit
markdown-pp postface.md -o "$SCRIPT_DIR/doc/site/postface.md" -e tableofcontents

cd "$SCRIPT_DIR" || exit

mkdir ./site/release-notes
cp -f ./RELEASENOTES.md ./site/release-notes/index.md

echo " - MARKDOWN-PP: generating site page with TOC..."
cd "$SCRIPT_DIR/doc/site" || exit
bash "$SCRIPT_DIR/spec-publisher/scripts/create-venv.sh"
command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname "$(mktemp -u)")
  source "$tmpdir/.venv-markdown/bin/activate"
}
markdown-pp body.md -o body_toc.md

echo " - MARKDOWN-PP: generating site index.md..."
markdown-pp SITE.md -o ../../site/index.md

cd "$SCRIPT_DIR" || exit

cp -Rf specification/images profile schema archive examples site/
cp -Rf spec-publisher/res/md/figs site/

if [ -d _site ]
then
  echo " - Removing old site directory"
  rm -rf _site/*
fi
