#!/bin/bash

_=$(command -v navi);
if [ "$?" != "0" ]; then
    printf -- "You don't seem to have navi installed.\n";
    printf -- "Get it: https://github.com/denisidoro/navi\n";
    printf -- "Exiting with code 127...\n";
    exit 127;
fi;

tarname="cheats.tar.gz";
path="/usr/local/Cellar/navi/$(navi --version)/libexec";
echo "navi path is: $path";

tar czf ${tarname} ./cheats;
rm -rf "$path/cheats";
mv $tarname "$path/$tarname";

cd $path;
tar xzf $tarname;
rm -rf "$path/$tarname";
