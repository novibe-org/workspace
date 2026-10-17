#!/usr/bin/env bash
set -euo pipefail

npm install -g --silent typescript typescript-language-server
for repo in novibe manifesto agentbox gherkin-lint-plus; do
  [ -d "projects/$repo/.git" ] || git clone "git@github.com:novibe-org/$repo.git" "projects/$repo"
done
(cd projects/manifesto && npm ci --silent)
(cd projects/gherkin-lint-plus && npm ci --silent)
