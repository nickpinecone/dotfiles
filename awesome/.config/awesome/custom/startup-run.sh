#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run "${HOME}/.config/awesome/custom/daemons.sh"
run "${HOME}/.config/awesome/custom/idle-lock.sh"
