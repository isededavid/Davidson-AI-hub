#!/bin/bash
# Installs ffmpeg (ffmpeg/ffprobe) so video frame extraction works out of the
# box in every Claude Code on the web session for this repo, instead of
# reinstalling it (and burning tokens re-deriving the fix) each time.
set -euo pipefail

# Only run in Claude Code on the web (remote) sessions.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Idempotent: skip if already installed.
if command -v ffmpeg >/dev/null 2>&1 && command -v ffprobe >/dev/null 2>&1; then
  exit 0
fi

apt-get update -y

# The base image's ffmpeg package can land with unmet deps (libva2,
# libcaca0, etc. 404 during the plain install). Install without recommended
# extras first, then fall back to apt's dependency fixer so ffmpeg actually
# gets configured.
if ! apt-get install -y --no-install-recommends ffmpeg; then
  apt --fix-broken install -y
fi
