# Debian 10 (buster) のベースイメージを取得
FROM buildpack-deps:buster

# パッケージのアップデートとopen-cobol(GnuCOBOL)のインストール
RUN apt-get update && apt-get install -y open-cobol