function emacs_build
    cd (ghq root)/git.sv.gnu.org/emacs

    # CLI
    ./autogen.sh
    ./configure \
        --with-native-compilation="aot" \
        --with-libxml2=/usr/bin/xml2-config \
        --without-ns \
        --without-x \
        --with-libxml2=/usr/bin/xml2-config \
        --prefix=$HOME/.local
    make
    make install

    # GUI
    ./autogen.sh
    ./configure \
        --with-native-compilation="aot" \
        --with-libxml2=/usr/bin/xml2-config \
        --without-ns \
        --without-x \
        --with-libxml2=/usr/bin/xml2-config \
        --prefix=$HOME/.local
    make
    make install
    rm -fr /Applications/Emacs.app/
    mv nextstep/Emacs.app/ /Applications/
end
