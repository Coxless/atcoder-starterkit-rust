# atcoder-starterkit-rust
## 概要
RustでAtcoderをするためのスターターキット  
以下を抱合  
- rust-analyzer
- rustfmt
- clippy
- cargo-compete

## 使い方
- clone
- reopen container

## Reopen container後の対応
### rust-analyzer extensionのインストール
最新版はatcoderで利用できるrustcのversion 1.70.0に対応していないため、下記でインストールする
code --install-extension rust-lang.rust-analyzer@0.3.1402

### login
cargo compete login atcoderではログインできないため、ブラウザでログイン後にcookieからREVEL_SESSIONをコピペし以下で該当箇所を更新する
vi $HOME/.local/share/cargo-compete/cookies.jsonl
