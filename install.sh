#!/bin/bash

version=$(navi --version)
tarname="cheats.tar.gz"
prefix="/usr/local/Cellar/navi/"
suffix="/libexec"
path=${prefix}${version}${suffix}

$(tar czf ${tarname} ./cheats)
$(rm -rf "${path}/cheats" )
$(mv ${tarname} "${path}/${tarname}")

cd ${path}
$(tar xzf ${tarname})
$(rm -rf "${path}/${tarname}" )