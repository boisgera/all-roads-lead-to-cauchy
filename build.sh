#!/usr/bin/env bash
# Generate build/index.html from all-roads-lead-to-cauchy.md.
set -euo pipefail
cd "$(dirname "$0")"

mkdir -p build
pandoc \
  --from markdown \
  --to html5 \
  --standalone \
  --mathjax \
  --output build/index.html \
  all-roads-lead-to-cauchy.md
