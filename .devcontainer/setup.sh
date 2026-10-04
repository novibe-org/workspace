#!/usr/bin/env bash
set -euo pipefail

npm install -g --silent typescript typescript-language-server
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$PATH"
for repo in novibe nv manifesto agentbox; do
  [ -d "projects/$repo/.git" ] || git clone "git@github.com:novibe-org/$repo.git" "projects/$repo"
done
(cd projects/novibe && pnpm install --frozen-lockfile --config.confirmModulesPurge=false)
(cd projects/manifesto && npm ci --silent)
uv tool install --editable projects/nv
