#!/usr/bin/env bash
set -e
OWNER="juno99zz-arkt"
REPO="hot-issue-radar"

git init
git branch -M main
git add .
git commit -m "feat: initial Hot Issue Deep Research Archive & Report #1"
gh repo create "${OWNER}/${REPO}" --public --source=. --remote=origin --push
gh api -X POST "repos/${OWNER}/${REPO}/pages" -f "source[branch]=main" -f "source[path]=/"
echo "Done! Live shortly at: https://${OWNER}.github.io/${REPO}/"
