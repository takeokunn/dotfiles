{ pkgs, ... }:

{
  programs.home-manager.enable = true;

  home.username = "obara";
  home.homeDirectory = "/Users/obara";
  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    # for lanaguage
    clojure
    deno
    gauche
    go
    go-jsonnet
    ghc
    guile
    erlang
    fsharp
    lua
    nodejs
    perl
    php83
    php83Packages.composer
    php83Extensions.redis
    python3
    roswell
    ruby
    terraform
    vlang
    zig

    # for language specific
    nil
    typescript
    nodePackages_latest.typescript-language-server
    jsonnet-language-server
    tfsec
    tflint
    tfupdate
    terraform-ls
    rye
    yarn

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
    glib
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
    nkf
    peco
    pv
    ripgrep
    rlwrap
    tmux
    wget
    yq

    # for basic tools
    act
    actionlint
    awscli
    cacert
    exiftool
    extract_url
    direnv
    ffmpeg
    graphviz
    hadolint
    hugo
    imagemagick
    mu
    ncurses
    neofetch
    offlineimap
    openssl
    pass
    pwgen
    SDL2
    shellcheck
    ssm-session-manager-plugin
    terminal-notifier
    tig
    tokei
    unixtools.procps
    unixtools.watch

    # for network
    bettercap
    gping
    speedtest-cli
    tcpdump

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
    sqlite
    tbls

    # for jokes
    asciiquarium
    cmatrix
    gibo
    sl

    # for ai
    ollama

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
