#!/bin/bash
git apply --check no_hidpi.patch
while true; do
    read -p "Do you wish to apply this patch[y/n]?" yn
    case $yn in
        [Yy]* ) git apply --stat no_hidpi.patch; break;;
        [Nn]* ) exit;;
        *) echo "Please answer y/n.";;
    esac
done
