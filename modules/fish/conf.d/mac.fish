if test (uname) = "Darwin"
    # libxml2
    set -gx LDFLAGS "-L$(brew --prefix libxml2)/lib"
    set -gx CPPFLAGS "-I$(brew --prefix libxml2)/include -I$(brew --prefix zlib)/include"
    set -gx PKG_CONFIG_PATH "$(brew --prefix libxml2)/lib/pkgconfig"
    fish_add_path (brew --prefix libxml2)/bin

    # libgccjit
    set -xg LIBRARY_PATH (brew --prefix libgccjit)/lib/gcc/current
    set -x NATIVE_FULL_AOT 1

    # openssl
    fish_add_path (brew --prefix openssl)/bin

    # editor
    set -x EDITOR "emacs -nw"
    set -x HOMEBREW_EDITOR "emacs -nw"

    # path
    fish_add_path /usr/local/sbin
    fish_add_path /usr/local/bin
    fish_add_path $HOME/.local/bin

    # alias
    alias cdd 'cd ~/Desktop'
    alias make 'make -j8'

    # emacs
    alias emacs 'emacs -nw'
    set -xg LSP_USE_PLISTS true

    # texinfo
    fish_add_path (brew --prefix texinfo)/bin

    # bison
    fish_add_path (brew --prefix bison)/bin

    # libiconv
    fish_add_path (brew --prefix libiconv)/bin

    # speedtest-cli
    alias speedtest 'speedtest --secure'

    # homebrew
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin

    # gpg
    fish_add_path (brew --prefix gnupg@2.2)/bin
end
