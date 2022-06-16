if test (uname) = "Darwin"
    # lang
    set -xg LANG en_US.UTF-8
    set -xg LC_ALL en_US.UTF-8

    # libxml2
    set -gx LDFLAGS "-L/usr/local/opt/libxml2/lib"
    set -gx CPPFLAGS "-I/usr/local/opt/libxml2/include"
    set -gx PKG_CONFIG_PATH "/usr/local/opt/libxml2/lib/pkgconfig"
    fish_add_path /usr/local/opt/libxml2/bin

    # libgccjit
    set -xg LIBRARY_PATH (brew --prefix libgccjit)/lib/gcc/11
    set -x NATIVE_FULL_AOT 1

    # openssl
    fish_add_path /usr/local/opt/openssl/bin

   # homebrew editor
    set -x EDITOR "emacs -nw"
    set -x HOMEBREW_EDITOR "emacs -nw"

    # path
    fish_add_path /usr/local/sbin
    fish_add_path /usr/local/bin

    # alias
    alias cdd 'cd ~/Desktop'
    alias make 'make -j8'

    # emacs
    alias emacs 'emacs -nw'
    set -xg LSP_USE_PLISTS true

    # texinfo
    fish_add_path /usr/local/opt/texinfo/bin

    # bison
    fish_add_path /usr/local/opt/bison/bin

    # libiconv
    fish_add_path /usr/local/opt/libiconv/bin
end
