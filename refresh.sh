#!/usr/bin/env bash

POLYBAR_DIR=$HOME/.config/polybar
I3_DIR=$HOME/.config/i3
ALACRITTY_DIR=$HOME/.config/alacritty
EMACS_FILE=$HOME/.emacs
EMACS_DIR=$HOME/.emacs.d

cp -r $POLYBAR_DIR $I3_DIR $ALACRITTY_DIR .

cp $EMACS_FILE .
cp $EMACS_DIR/poggers-theme.el ./.emacs.d/
