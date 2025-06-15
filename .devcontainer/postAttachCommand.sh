#!/bin/bash

# 必要なツールのインストール
echo "rustup updating..."
rustup self update
rustup update

echo "cargo fetching..."
rustup component add cargo
cargo fetch

# インストールするパッケージ一覧
echo "Installing required packages..."
PACKAGES=("cargo-equip" "cargo-compete")

for PACKAGE in "${PACKAGES[@]}"; do
    if cargo install --list | grep -q "^$PACKAGE "; then
        echo "$PACKAGE is already installed."
    else
        echo "$PACKAGE is not installed. Installing..."
        cargo install "$PACKAGE" --locked
    fi
done
