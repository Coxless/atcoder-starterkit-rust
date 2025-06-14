#!/bin/bash
set -e

# 競合を避けるため完全削除
sudo rm -rf /usr/local/rustup /usr/local/cargo ~/.cargo ~/.rustup

# Rustインストール
curl https://sh.rustup.rs -sSf | sh -s -- -y
source ~/.cargo/env
rustup component add cargo

# 必要なツールのインストール
cargo fetch
cargo install cargo-equip cargo-compete --locked
