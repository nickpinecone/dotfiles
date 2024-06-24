#!/bin/bash

if [[ `ibus engine` == "xkb:us::eng" ]]; then
    ibus engine "anthy"
elif [[ `ibus engine` == "anthy" ]]; then
    ibus engine "xkb:ru::rus"
else
    ibus engine "xkb:us::eng"
fi
