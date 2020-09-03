#!/bin/bash

set -e

[[ -d ~/.cargo ]] || (echo "Installing Rust..." && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh)

[[ -f ~/.cargo/bin/rust-analyzer ]] || (echo "Installing rust-analyzer" && (cd ~ && git clone https://github.com/rust-analyzer/rust-analyzer && cd rust-analyzer && cargo xtask install --server))

[[ -d ~/.config/coc/extensions/node_modules/coc-rust-analyzer ]] || (echo "Installing coc-rust-analyzer" && vim -E -c "CocInstall coc-rust-analyzer")

