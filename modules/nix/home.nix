{ pkgs, ... }:

let
  personal = import <personal> {};
in
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
    (final: prev: {
      gnupg = prev.gnupg.overrideAttrs (old: {
        src = prev.fetchurl {
          url = "mirror://gnupg/gnupg/gnupg-2.4.4.tar.bz2";
          hash = "sha256-Z+vgFsqQ+naIzmejh+vYLGJh6ViX23sj3yT/M1voW8Y=";
        };
      });
      gotools = prev.gotools.overrideAttrs (old: {
        postPatch = ''
          # The gopls folder contains a Go submodule which causes a build failure
          # and lives in its own package named gopls.
          rm -r gopls
          # getgo is an experimental go installer which adds generic named server and client binaries to $out/bin
          rm -r cmd/getgo
          # remove bundle
          rm -r cmd/bundle
        '';
      });
    })
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
    ruby
    roswell
    terraform
    vlang
    zig

    # for language specific
    gopls
    gotools
    hadolint
    jsonnet-language-server
    nil
    niv
    nixpkgs-fmt
    nix-prefetch
    nix-prefetch-git
    nix-prefetch-github
    nodePackages_latest.typescript-language-server
    rustup
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
    gnupg

    # for build tools
    autoconf
    automake
    binutils
    bison
    boost
    cmake
    coreutils
    foreman
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
    libsixel
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
    personal.tmux-sixel
    tree
    wget
    yq

    # for basic tools
    SDL2
    act
    actionlint
    android-tools
    cacert
    cmigemo
    direnv
    du-dust
    exiftool
    extract_url
    ffmpeg
    graphviz
    hugo
    iftop
    imagemagick
    mu
    ncurses
    neofetch
    offlineimap
    openssl
    personal.mitamae
    personal.isucrud
    pwgen
    silicon
    sqldef
    terminal-notifier
    tig
    tokei
    unixtools.procps
    unixtools.watch

    # for pass
    bitwarden-cli
    (pass.withExtensions (extensions: with extensions; [ pass-otp ]))

    # for cloud
    personal.ecspresso
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
    iterm2
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
