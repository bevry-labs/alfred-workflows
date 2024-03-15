#!/usr/bin/env bash
ffmpeg -i FastGPT.mp4 -vf "setpts=0.5*PTS" -r 5 FastGPT5.mp4
ffmpeg -i FastGPT5.mp4 -vf "fps=5" -lossless 0 -loop 0 FastGPT.webp
rm FastGPT5.mp4
