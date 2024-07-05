#!/bin/bash

${HOME}/.local/bin/xidlehook \
  --not-when-fullscreen \
  --not-when-audio \
  --timer 60 \
    'light -S 0' \
    '' \
  --timer 240 \
    'i3lock-fancy' \
    '' \
  --timer 300 \
    'systemctl suspend' \
    ''
