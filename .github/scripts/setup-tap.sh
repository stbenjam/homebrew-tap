#!/usr/bin/env bash
# Put Homebrew on PATH and register this checkout as the stbenjam/tap tap, so
# brew commands build from the working tree rather than a fresh clone.
set -euo pipefail

if ! command -v brew >/dev/null && [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  echo "$HOMEBREW_PREFIX/bin" >> "$GITHUB_PATH"
fi

brew update --quiet
tap="$(brew --repository)/Library/Taps/stbenjam/homebrew-tap"
mkdir -p "$(dirname "$tap")"
ln -sfn "$GITHUB_WORKSPACE" "$tap"
brew trust stbenjam/tap
