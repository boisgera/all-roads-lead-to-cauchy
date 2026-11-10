#!/usr/bin/env bash
# Assemble the Markdown parts in assets/ into build/index.html.
set -euo pipefail
cd "$(dirname "$0")"

parts=(
  "assets/3+1-versions-of-local-cauchy.md"
  "assets/How the divergence theorem would help.md"
  "assets/The divergence theorem.md"
  "assets/the-speedrun.md"
)

mkdir -p build
pandoc \
  --from markdown \
  --to html5 \
  --standalone \
  --mathjax \
  --metadata title="All roads lead to Cauchy" \
  --output build/index.html \
  "${parts[@]}"
