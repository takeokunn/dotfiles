# dotfiles

## Setup

### Initialize

```shell
$ bash bin/brew-init.sh # for homebrew
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
* bash
* nano
* vim
* tig
* peco

### tmux

```shell
$ make tmux-install
$ make tmux-clean
```

* tmux

### alacritty

```shell
$ make alacritty-install
$ make alacritty-clean
```

* alacritty

### fish

```shell
$ make fish-install
$ make fish-clean
$ make fish-update
```

* fish
* oh-my-fish

### lem

```shell
$ make lem-install
$ make lem-clean
$ make lem-update
```

* lem

### nvim

```shell
$ make nvim-install
$ make nvim-clean
```

* nvim

### irb

```shell
$ make irb-install
$ make irb-clean
$ make irb-update
```

* irb

### spacemacs

```shell
$ make spacemacs-install
$ make spacemacs-clean
```

* spacemacs

### all

```shell
$ make all
$ make clean
$ make update
```
