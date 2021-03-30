#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd docs

git init
git config user.email "github-actions[bot]@ptienchuan.noreply.github.com"
git config user.name "github-actions[bot]"
git add -A
git commit -m 'deploy'

git push -f "https://ptienchuan:$GITHUB_TOKEN@github.com/ptienchuan/vuejs-gh-pages.git" master:gh-pages

cd -
