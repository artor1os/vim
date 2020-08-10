# vim

## NOTE

some vim version v8.2.13xx causes NERDTree unable to open subdirectories

## Prerequisites

- vim - with lua, no luajit, python3
- python3.8
- llvm
- ctags

## Build from source with lua

```sh
sudo apt remove vim
sudo apt install -y liblua-5.3-dev libperl-dev python3-dev

sudo mkdir /usr/include/lua5.3/include
sudo cp /usr/include/lua5.3/*.h* /usr/include/lua5.3/include
sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.3.so /usr/local/lib/liblua.so

git clone https://github.com/vim/vim.git ~/src/vim && cd ~/src/vim

./configure --with-features=huge --enable-largefile --disable-netbeans --enable-python3interp --with-python3-config-dir=/usr/lib/python3.8/config-3.8m-x86_64-linux-gnu/ --enable-perlinterp --enable-luainterp --with-lua-prefix=/usr/include/lua5.3 --enable-fail-if-missing --enable-cscope --disable-gui

make
sudo make install
```

## Pull bundles

```sh
git clone --shallow-modules --recurse-submodules https://github.com/artor1os/vim ~/.vim
sudo vim -E -c "helptags ALL" -c q

# compile YouCompleteMe
git submodule update --init --recursive pack/extend/start/YouCompleteMe
python3 pack/extend/start/YouCompleteMe/install.py --clangd-completer

# complie color_coded
git submodule update --init --recursive pack/syntax/start/color_coded
cd pack/syntax/start/color_coded
mkdir build && cd build
cmake .. -DDOWNLOAD_CLANG=0
make && make install
make clean

# correct one half color scheme directory
configure.sh
```

## bundles

- [sensible](https://github.com/tpope/vim-sensible)

- [surround](https://github.com/tpope/vim-surround)

- [easymotion](https://github.com/easymotion/vim-easymotion)

- [hardtime](https://github.com/takac/vim-hardtime)

- [nerdtree](https://github.com/preservim/nerdtree)

- [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)

- [fzf](https://github.com/junegunn/fzf)

- [nerdcommenter](https://github.com/preservim/nerdcommenter)

- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

- [auto-pairs](https://github.com/jiangmiao/auto-pairs)

- [color_coded](https://github.com/jeaye/color_coded)

- [tagbar](https://github.com/majutsushi/tagbar)

- [fugitive](https://github.com/tpope/vim-fugitive)

- [rhubarb](https://github.com/tpope/vim-rhubarb)

- [airline](https://github.com/vim-airline/vim-airline)

- [onehalf](https://github.com/sonph/onehalf)

- [devicons](https://github.com/ryanoasis/vim-devicons)

- [unimpaired](https://github.com/tpope/vim-unimpaired)
