# emacs file

emacsの設定ファイルを管理します。
パッケージ管理システムとしてcaskを利用しています。

## Require
- emacs
  - 24.3.1
- cask
  - 0.7.0

## Setup

- Download repository

```shell
cd /path/to/repo
git clone git@github.com:betahikaru/setting-emacs.git
```

以降、/path/to/repoにダウンロードした前提で進める。

- Install emacs (new version)

```shell
brew update
brew install emacs
ln -s /path/to/repo/.emacs.d/init.el ~/.emacs.d/init.el
```

  - ⚠️注意⚠️
 macのデフォルトのemacs(22系)が、/usr/bin/emacsにインストールされている。
 brewでインストールすると/usr/local/bin/emacsにシンボリックリンクが張られるが、
 PATHの設定により、システムのemacsの方のパスが先に読まれる。
 そのため、暫定的な回避として、.zshrcに以下の設定を追加すること。

```.zshrc
alias emacs='Emacs'
```

- Install cask

```shell
berw install cask
 # ./Caskファイル、./.caskフォルダを作成するためにinitを実行
cd ~/.emacs.d
cask init
 # Caskをシンボリックリンクにする。
rm ~/.emacs.d/Cask
ln -s /path/to/repo/Cask ~/.emacs.d/Cask
 # Caskファイルに記載した設定ファイルをインストールする
cask install
 # Caskの動作にどうも必要らしいのでシンボリックリンクをはる。
ln -s /usr/local/share/emacs/site-lisp/cask.el ~/.emacs.d/.cask/cask.el
ln -s /usr/local/share/emacs/site-lisp/cask-bootstrap.el ~/.emacs.d/.cask/cask-bootstrap.el
```
