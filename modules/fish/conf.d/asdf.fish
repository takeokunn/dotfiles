if test -d $HOME/.asdf
    set -x ASDF_DIR $HOME/.asdf
    fish_add_path $ASDF_DIR/bin
    fish_add_path $ASDF_DIR/shims
end
