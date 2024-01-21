{ pkgs, ... }:

{
  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz";
    }))
    (import (builtins.fetchTarball {
      url = "https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz";
    }))
  ];

  home.username = "obara";
  home.homeDirectory = "/Users/obara";
  home.stateVersion = "23.11";
  home.packages = with pkgs; [
    # for lanaguage
    clojure
    deno
    erlang
    fsharp
    gauche
    ghc
    go
    go-jsonnet
    guile
    lua
    nodejs_21
    perl
    php83
    php83Extensions.redis
    php83Packages.composer
    python3
    roswell
    ruby
    terraform
    vlang
    zig

    # for language specific
    cargo
    hadolint
    jsonnet-language-server
    nil
    nixpkgs-fmt
    nodePackages_latest.typescript-language-server
    rust-analyzer
    rustc
    rye
    shellcheck
    terraform-ls
    tflint
    tfsec
    tfupdate
    typescript
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
    glib
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
    sqldef
    stunnel
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
    gitflow
    htop
    jq
    nkf
    peco
    pv
    ripgrep
    rlwrap
    tmux
    tree
    wget
    yq

    # for basic tools
    SDL2
    act
    actionlint
    cacert
    cmigemo
    direnv
    du-dust
    exiftool
    extract_url
    ffmpeg
    graphviz
    hugo
    imagemagick
    mu
    ncurses
    neofetch
    offlineimap
    openssl
    pwgen
    silicon
    terminal-notifier
    tig
    tokei
    unixtools.procps
    unixtools.watch

    # for pass
    bitwarden-cli
    (pass.withExtensions (extensions: with extensions; [ pass-otp ]))

    # for cloud
    awscli
    ssm-session-manager-plugin

    # for network
    bettercap
    gping
    speedtest-cli
    tcpdump

    # for editor
    emacs-git
    editorconfig-core-c
    micro
    nano
    neovim-nightly
    tree-sitter
    (tree-sitter.withPlugins (p: builtins.attrValues p))

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
    genact

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

    # for application
    discord
    gimp
    raycast
    slack
  ];

  launchd.agents = {
    ollama = {
      enable = false;
      config = {
        Label = "dev.takeokunn.ollama";
        ProgramArguments = ["${pkgs.ollama}/bin/ollama" "serve"];
        RunAtLoad = true;
        KeepAlive = true;
      };
    };
  };
}
