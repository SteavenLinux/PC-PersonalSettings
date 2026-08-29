#!/usr/bin/env bash

source /etc/os-release

case "$ID" in
    steavenlinux|cachyos|arch)
        SOURCE="SteavenLinux"
        ;;
    linuxmint)
        SOURCE="LinuxMint"
        ;;
    fedora)
        SOURCE="Fedora"
        ;;
    *)
        echo "Unsupported distribution: $PRETTY_NAME"
        exit 1
        ;;
esac

if [[ ! -d "$SOURCE/etc" ]]; then
    echo "Error: '$SOURCE/etc' does not exist."
    exit 1
fi

echo "Detected: $PRETTY_NAME"
echo "Using source: $SOURCE"

sudo cp -Rv "$SOURCE/etc"/. /etc