#!/bin/bash

DST_DIR="$ZYNTHIAN_DATA_DIR/soundfonts/sfz/Pianos/Zynthian Salamander Grand"
DST_DIR="/tmp/j2/Zynthian Salamander Grand"
DOWNLOAD_URL="https://github.com/jlearman/zynthian-salamander-grand/archive/refs/heads/main.zip"
TMP_DIR=$(mktemp -d)

trap 'rm -rf "$TMP_DIR"' EXIT

do_install() {
    set -ex
    mkdir -p "$TMP_DIR" || ( echo "Can't make temp dir $TMP_DIR"; exit 1)
    wget --directory-prefix "$TMP_DIR" -q "$DOWNLOAD_URL"
    unzip -q "$TMP_DIR/main.zip" -d "$TMP_DIR"
    rm -rf "$DST_DIR"
    mkdir -p "$DST_DIR"
    rm -f "$TMP_DIR/package"
    mv "$TMP_DIR"/zynthian-salamander-grand-main/* "$DST_DIR"
    set +x
    echo "installed"
}

do_uninstall() {
    if [[ $(is_installed) == "installed" ]]; then
        rm -rf "$DST_DIR"
        echo "uninstalled"
    else
        echo "not installed"
    fi
}

is_installed() {
    if [[ -d "$DST_DIR" ]]; then
        echo "installed"
    else
        echo "not installed"
    fi
}

if [[ "$1" == "install" ]]; then
    do_install
elif [[ "$1" == "uninstall" ]]; then
    do_uninstall
elif [[ "$1" == "installed" ]]; then
    echo $(is_installed)
fi

