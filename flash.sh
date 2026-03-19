#!/usr/bin/env bash

KB="splitkb/halcyon/elora/rev2"

KM=$(qmk list-keymaps -kb $KB | sk)

if ["$KM" == ""]; then
    echo "No keymap choosen... Aborting";
else
    echo "Flashing $KM..."
    qmk flash -kb $KB -km $KM
    echo "Done :)"
fi
