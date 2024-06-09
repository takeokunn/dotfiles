if type -q go
    set -x GOPATH $HOME/projects/go
    set -x GO111MODULE on
    fish_add_path $GOPATH/bin
end
