if type -q go
    set -x GOPATH $HOME/projects/go
    fish_add_path $GOPATH/bin
end

if type -q goenv
    set -x GOENV_ROOT $HOME/.goenv
    fish_add_path $GOENV_ROOT/bin
    source (goenv init - | psub)
    fish_add_path $GOENV_ROOT/bin
    fish_add_path $GOPATH/bin
end
