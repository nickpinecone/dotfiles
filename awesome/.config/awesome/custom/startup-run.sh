#!/bin/bash

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run "xfce4-power-manager"
run "${HOME}/.config/awesome/custom/ibus-daemon.sh"
