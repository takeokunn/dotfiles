if test (uname) = "Darwin"
    # for emacs
    set -gx NATIVE_FULL_AOT 1
    set -gx LSP_USE_PLISTS true

    # editor
    set -gx EDITOR "emacs -nw"
    set -gx HOMEBREW_EDITOR "emacs -nw"

    # path
    fish_add_path /usr/local/sbin
    fish_add_path /usr/local/bin
    fish_add_path $HOME/.local/bin

    # alias
    alias cdd 'cd ~/Desktop'
    alias make 'make -j8'
    alias emacs 'emacs -nw'
end

if test -d brew
    # # libxml2
    # set -gx LDFLAGS "-L$(brew --prefix libxml2)/lib"
    # set -gx CPPFLAGS "-I$(brew --prefix libxml2)/include -I$(brew --prefix zlib)/include"
    # set -gx PKG_CONFIG_PATH "$(brew --prefix libxml2)/lib/pkgconfig"
    # fish_add_path (brew --prefix libxml2)/bin

    # # libgccjit
    # set -xg LIBRARY_PATH (brew --prefix libgccjit)/lib/gcc/current

    # # openssl
    # fish_add_path (brew --prefix openssl)/bin

    # # texinfo
    # fish_add_path (brew --prefix texinfo)/bin

    # # bison
    # fish_add_path (brew --prefix bison)/bin

    # # libiconv
    # fish_add_path (brew --prefix libiconv)/bin

    # homebrew
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin
end
