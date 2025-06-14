# !/bin/bash
rustup self update
rustup component remove cargo
rustup component add cargo
cargo clean
cargo fetch
