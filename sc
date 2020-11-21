#!/usr/bin/env sh

# create more reliable symbolic links (sc=ShortCut)
ln -s $(realpath $1) $2

