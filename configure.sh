#!/bin/sh

mkdir -p pack/color/start/onehalf/autoload
mkdir -p pack/color/start/onehalf/colors
cp -r custom/onehalf/vim/autoload/* pack/color/start/onehalf/autoload/
cp -r custom/onehalf/vim/colors/* pack/color/start/onehalf/colors/

wget https://github.com/neoclide/coc.nvim/archive/release.tar.gz -O /tmp/release.tar.gz
(cd pack/extend/start && tar xzfv /tmp/release.tar.gz --one-top-level=coc.nvim --strip-components=1)
