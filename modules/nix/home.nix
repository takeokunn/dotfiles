{ config, pkgs, ... }:

{
  home.username = "obara";
  home.homeDirectory = "/Users/obara";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    # for lanaguage
    clojure
    deno
    gauche
    go
    guile
    jsonnet
    lua
    nodejs
    perl
    php83
    php83Packages.composer
    python3
    roswell
    ruby
    terraform
    vlang
    zig

    # for language specific
    tfsec
    tflint
    tfupdate
    terraform-ls

    # for gnupg
    pinentry
    gnupg22

    # for build tools
    autoconf
    automake
    binutils
    bison
    boost
    cmake
    coreutils
    gnutls
    icu
    libcxx
    libcxxrt
    libgccjit
    libiconv
    libllvm
    libmng
    libpng
    librsvg
    libxml2
    libzip
    meson
    pkg-config
    stunnel
    sqldef
    texinfo

    # for essential tools
    bat
    csvq
    eza
    fd
    fzf
    gh
    ghq
    git
    htop
    jq
    peco
    pv
    ripgrep
    rlwrap
    tmux
    wget
    yq

    # for basic tools
    actionlint
    awscli
    bettercap
    cacert
    exiftool
    extract_url
    direnv
    ffmpeg
    gping
    graphviz
    hadolint
    hugo
    imagemagick
    mu
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
    ssm-session-manager-plugin
    terminal-notifier
    tig
    tokei
    unixtools.procps
    unixtools.watch

    # for editor
    emacs
    editorconfig-core-c
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
    cmatrix
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
