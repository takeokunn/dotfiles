# dotfiles

## Setup

### Initialize

mac:
```shell
$ make brew-install
```

linux:
```shell
$ bash bin/apt-init.sh  # for ubuntu
$ bash bin/pkg-init.sh  # for FreeBSD
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

### bash

```shell
$ make bash-install
$ make bash-clean
```

### fish

```shell
$ make fish-install
$ make fish-clean
$ make fish-update
```

### nano

```shell
$ make nano-install
$ make nano-clean
```

### textlint

```shell
$ make textlint-install
$ make textlint-clean
```

### tmux

```shell
$ make tmux-install
$ make tmux-clean
```

### nvim

```shell
$ make nvim-install
$ make nvim-clean
```

### lem

```shell
$ make lem-install
$ make lem-clean
$ make lem-update
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

### doomemacs

```shell
$ make doomemacs-install
$ make doomemacs-clean
```

### skk

```shell
$ make skk-install
$ make skk-clean
```

### peco

```shell
$ make peco-install
$ make peco-clean
```

### alacritty

```shell
$ make alacritty-install
$ make alacritty-clean
```

### phpactor

```shell
$ make phpactor-install
$ make phpactor-clean
```

### nyxt

```shell
$ make nyxt-install
$ make nyxt-clean
```

### gh

```shell
$ make gh-install
$ make gh-clean
```

### neofetch

```shell
$ make neofetch-install
$ make neofetch-clean
```

### all

```shell
$ make all
$ make clean
$ make update
```
