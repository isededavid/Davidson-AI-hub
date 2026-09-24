#!/bin/bash
# Installs ffmpeg (ffmpeg/ffprobe), opencv-python-headless and audio-review
# packages so video frame extraction and audio review work out of the box in
# every Claude Code on the web session for this repo, instead of reinstalling them (and burning tokens re-deriving the
# fix) each time a Sixth Sense video task needs analyzing.
set -euo pipefail

# Only run in Claude Code on the web (remote) sessions.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# --- ffmpeg / ffprobe -------------------------------------------------------
if ! { command -v ffmpeg >/dev/null 2>&1 && command -v ffprobe >/dev/null 2>&1; }; then
  apt-get update -y

  # The base image's ffmpeg package can land with unmet deps (libva2,
  # libcaca0, etc. 404 during the plain install). Install without recommended
  # extras first, then fall back to apt's dependency fixer so ffmpeg actually
  # gets configured.
  if ! apt-get install -y --no-install-recommends ffmpeg; then
    apt --fix-broken install -y
  fi
fi

# --- opencv-python-headless (frame extraction fallback / array ops) --------
if ! python3 -c "import cv2" >/dev/null 2>&1; then
  pip install --quiet opencv-python-headless
fi

# --- audio review: librosa/soundfile (loudness, onsets, spectra) and ------
# faster-whisper (speech transcription). faster-whisper downloads its model
# from huggingface.co on first use, so transcription only works if the
# environment's network policy allows that host.
if ! python3 -c "import librosa, soundfile, faster_whisper" >/dev/null 2>&1; then
  pip install --quiet librosa soundfile faster-whisper
fi
