#!/bin/bash

set -ex

# TODO: prompt keep old
function install() {
    local NAME=$1
    local FPATH=$2

    [ -f "$FPATH/$NAME" ]  && mv -i "$FPATH/$NAME" "$FPATH/$NAME.old"
    cp "./$NAME" "$FPATH/$NAME"
}

echo ".hyper.js..."
install .hyper.js $HOME

echo ".zshrc..."
install .zshrc $HOME

echo "settings.json..."
install settings.json "$HOME/Library/Application Support/Code/User"
