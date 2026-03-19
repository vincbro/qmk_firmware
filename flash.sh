#!/usr/bin/env bash

KB="splitkb/halcyon/elora/rev2"

KM=$(qmk list-keymaps -kb $KB | sk)

echo "Flashing $KM..."
qmk flash -kb $KB -km $KM
