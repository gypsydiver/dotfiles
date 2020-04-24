#!/bin/bash

set -e

# TODO: prompt keep old

[ -f "$HOME/.hyper.js" ] && mv -i $HOME/.hyper.js $HOME/.hyper.old.js
cp .hyper.js $HOME/

[ -f "$HOME/.zshrc" ] && mv -i $HOME/.zshrc $HOME/.zshrc.old
cp .zshrc $HOME/

# settings.json?
