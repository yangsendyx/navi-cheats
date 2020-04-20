#!/bin/bash

_=$(command -v navi);
if [ "$?" != "0" ]; then
    printf -- "You don't seem to have navi installed.\n";
    printf -- "Get it: https://github.com/denisidoro/navi\n";
    printf -- "Exiting with code 127...\n";
    exit 127;
fi;

# tarname="cheats.tar.gz";
# version=$(navi --version);
# echo $version;
# path="/usr/local/Cellar/navi/${version: 5}/navi";
# echo "navi path is: $path";

# tar czf ${tarname} ./cheats;
# rm -rf "$path/cheats";
# mv $tarname "$path/$tarname";

# cd $path;
# tar xzf $tarname;
# rm -rf "$path/$tarname";

cp -r ./cheats ./.cheats
rm -rf ~/.cheats
mv ./.cheats ~/.cheats
