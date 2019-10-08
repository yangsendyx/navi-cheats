#!/bin/bash

tarname="cheats.tar.gz"
{ # try
    path="/usr/local/Cellar/navi/$(navi --version)/libexec"
    echo "navi path is: $path"

    tar czf ${tarname} ./cheats
    rm -rf "$path/cheats"
    mv $tarname "$path/$tarname"

    cd $path
    tar xzf $tarname
    rm -rf "$path/$tarname"
} || { # catch
    exit 1
}