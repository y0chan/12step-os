# 12step-os

## 概要
- これは何?
    - [12ステップで作る 組込みOS自作入門](http://kozos.jp/books/makeos/)を進めていくリポジトリ
    - ソースコードのコンパイル、イメージの作成はDockerコンテナ上で実行する

## ソースコードのコンパイル、イメージの作成
1. コンパイル用のDockerコンテナのビルド

    ```
    cd <Dockerfileが存在するディレクトリ>
    docker build -t 12step-compiler .
    ```
1. ソースコードのコンパイル、イメージの作成
- Dockerコンテナ上で`make`, `make clean` ,`make image`を実行
    - 各bootloadディレクトリ、osディレクトリで以下のコマンドを実行
    - `make`

    ```
    docker run --rm -v $PWD:/tmp -w /tmp 12step-compiler make
    ```
    - `make clean`
    ```
    docker run --rm -v $PWD:/tmp -w /tmp 12step-compiler make clean
    ```
    - `make image`
    ```
    docker run --rm -v $PWD:/tmp -w /tmp 12step-compiler make image
    ```
## PC環境
- MacBook Air (11-inch, Early 2015)
    - macOS Catalins version 10.15.5

## 参考リンク
- [12ステップで作る 組込みOS自作入門](http://kozos.jp/books/makeos/)