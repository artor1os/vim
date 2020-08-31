vim -E -c "CocInstall coc-rust-analyzer" -c q

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source ~/.cargo/env

(cd ~ && git clone https://github.com/rust-analyzer/rust-analyzer && cd rust-analyzer && cargo xtask install --server)
