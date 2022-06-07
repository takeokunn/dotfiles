if test (uname) = "Darwin"
    set -xg LANG en_US.UTF-8
    set -xg LC_ALL en_US.UTF-8
    set -xg OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES
    # set -xg LDFLAGS "-L/usr/local/opt/libxml2/lib"
    # set -xg CPPFLAGS "-I/usr/local/opt/libxml2/include"
    # set -xg PKG_CONFIG_PATH "/usr/local/opt/libxml2/lib/pkgconfig"
    set -xg LIBXML2_CFLAGS `xml2-config --cflags`
    set -xg LIBXML2_LIBS `xml2-config --libs`

    # libgccjit
    set -xg LIBRARY_PATH (brew --prefix libgccjit)/lib/gcc/11
    set -x NATIVE_FULL_AOT 1

    # openssl
    fish_add_path /usr/local/opt/openssl/bin

    ## llvm
    fish_add_path /usr/local/opt/llvm/bin

    ## homebrew editor
    set -x EDITOR "emacs -nw"
    set -x HOMEBREW_EDITOR "emacs -nw"

    # path
    fish_add_path /usr/local/sbin
    fish_add_path /usr/local/bin

    # my alias
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
