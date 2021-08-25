# dotfiles

fdsjafjas;fjsafsa

## Setup

### Initialize

```
$ bash bin/brew-init.sh # for homebrew
$ bash bin/apt-init.sh  # for ubuntu
```

### Easy Install

```shell
# download
$ curl -O https://raw.githubusercontent.com/takeokunn/dotfiles/master/install.sh
$ curl -O https://raw.githubusercontent.com/takeokunn/dotfiles/master/install.sh.asc

# verify
$ gpg --keyserver keys.gnupg.net --recv-keys "0B10DAA7BA0236D7382287660F79C0AB03FD7A1C"
gpg: key 0F79C0AB03FD7A1C: "takeo obara <bararararatty@gmail.com>" not changed
gpg: Total number processed: 1
gpg:              unchanged: 1

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

### tmux

```shell
$ make tmux
$ make tmux-clean
```

* tmux

### fish

```shell
$ make fish
$ make fish-clean
$ make fish-update
```

* fish
* oh-my-fish

### lem

```shell
$ make lem
$ make lem-clean
$ make lem-update
```

* lem

### nvim

```shell
$ make nvim
$ make nvim-clean
```

* nvim

### irb

```shell
$ make irb
$ make irb-clean
$ make irb-update
```

* irb

### spacemacs

```shell
$ make spacemacs
$ make spacemacs-clean
```

* spacemacs

### all

```shell
$ make all
$ make clean
$ make update
```
