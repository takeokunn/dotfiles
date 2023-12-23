{ config, pkgs, ... }:

{
  home.username = "obara";
  home.homeDirectory = "/Users/obara";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    # for lanaguage
    deno
    gauche
    guile
    jsonnet
    lua
    nodejs
    perl
    php
    python3
    roswell
    ruby
    terraform
    vlang
    zig

    # for gnupg
    pinentry
    gnupg

    # for build tools
    autoconf
    automake
    binutils
    bison
    cmake
    coreutils
    gnutls
    icu
    libgcc
    libgccjit
    libiconv
    libmng
    libpng
    libxml2
    pkg-config
    texinfo

    # for essential tools
    bat
    eza
    fd
    fzf
    gh
    ghq
    git
    htop
    jq
    peco
    ripgrep
    rlwrap
    tmux
    wget
    yq

    # for basic tools
    actionlint
    exiftool
    ffmpeg
    gping
    graphviz
    hadolint
    hugo
    imagemagick
    ncurses
    neofetch
    nkf
    offlineimap
    openssl
    pass
    pwgen
    SDL2
    shellcheck
    sqlite
    terminal-notifier
    tig

    # for editor
    emacs
    micro
    nano
    neovim
    tree-sitter

    # for shell
    fish

    # for DB
    redis
    mysql

    # for jokes
    asciiquarium
    gibo
    sl

    # for font
    hackgen-font
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
    noto-fonts-emoji-blob-bin
    noto-fonts-lgc-plus
    noto-fonts-monochrome-emoji
  ];
}
