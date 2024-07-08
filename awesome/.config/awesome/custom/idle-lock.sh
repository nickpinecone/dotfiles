#!/bin/bash

${HOME}/.local/bin/xidlehook \
  --not-when-fullscreen \
  --not-when-audio \
  --timer 300 \
    'i3lock-fancy' \
    '' \
  --timer 300 \
    'systemctl suspend' \
    ''
