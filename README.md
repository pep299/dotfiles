# dotfiles
## セットアップ手順(for Mac)

1. brewやgitを使ってセットアップするので、xcode-selectをインストール
    - `xcode-select --install`
1. brewをインストール  
    - https://brew.sh/ja/
1. `export PATH="/opt/homebrew/bin:$PATH"` を実行してパスを通す
1. [./brew/install_brew.sh](./brew/install_brew.sh) をコピペして実行
1. [./before.sh](./before.sh) をコピペして実行
1. gitのセットアップを適宜行い、当リポジトリをクローンする
1. brewでインストールした各アプリやツールにログインしたり、設定を手動インポートする
    - 手動インポートが必要なアプリ・ツール
        - Raycast
1. `make setup` してmacの設定やシンボリックリンクを設置する

## その他
### Brewfileを更新したら
- `make generate/brew/script` を叩いてinstall_brew.shを更新する
    - install_brew.shはセットアップ時のコピペ用スクリプト
