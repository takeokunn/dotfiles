# dotfiles

## Setup

### Initialize

```shell
$ bash bin/brew-init.sh # for homebrew
$ bash bin/apt-init.sh  # for ubuntu
$ bash bin/pkg-init.sh  # for FreeBSD

$ bash bin/brew-font-init.sh # for homebrew font
```

### Easy Install

```shell
# download
$ curl -O https://raw.githubusercontent.com/takeokunn/dotfiles/master/install.sh
$ curl -O https://raw.githubusercontent.com/takeokunn/dotfiles/master/install.sh.asc

# verify gpg
$ gpg --verify install.sh.asc install.sh
gpg: Signature made Mon May  3 07:35:49 2021 JST
gpg:                using RSA key 8757D842F7D004D771C16954E195541047A39E7D
gpg: Good signature from "takeo obara <bararararatty@gmail.com>" [ultimate]

# exec
$ bash ./install.sh
```

### Core

```shell
$ make core
$ make core-clean
```

* dotfiles
* bash
* nano
* vim
* tig

### peco

```shell
$ make peco-install
$ make peco-clean
```

### tmux

```shell
$ make tmux-install
$ make tmux-clean
```

### alacritty

```shell
$ make alacritty-install
$ make alacritty-clean
```

### fish

```shell
$ make fish-install
$ make fish-clean
$ make fish-update
```

### lem

```shell
$ make lem-install
$ make lem-clean
$ make lem-update
```

### nvim

```shell
$ make nvim-install
$ make nvim-clean
```

### irb

```shell
$ make irb-install
$ make irb-clean
$ make irb-update
```

### spacemacs

```shell
$ make spacemacs-install
$ make spacemacs-clean
```

### phpactor

```shell
$ make phpactor-install
$ make phpactor-clean
```

### all

```shell
$ make all
$ make clean
$ make update
```
