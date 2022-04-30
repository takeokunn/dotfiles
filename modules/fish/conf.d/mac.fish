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
    # set -xg CC "/usr/local/bin/gcc-11"
    # set -xg LIBRARY_PATH "/usr/local/Cellar/libgccjit/11.3.0/lib/gcc/11/"

    # openssl
    fish_add_path /usr/local/opt/openssl/bin

    ## llvm
    fish_add_path /usr/local/opt/llvm/bin

    ## homebrew editor
    set -x HOMEBREW_EDITOR "emacs"

    # path
    fish_add_path /usr/local/sbin
    fish_add_path /usr/local/bin
    fish_add_path /opt/local/sbin

    # emacs
    alias emacs 'emacs -nw'

    # texinfo
    fish_add_path /usr/local/opt/texinfo/bin
end
