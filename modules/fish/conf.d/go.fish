if type -q go
    set -x GOPATH $HOME/projects/go
    set -x GO111MODULE on
    fish_add_path $GOPATH/bin
end

if type -q go; and type -q asdf
    set -x ASDF_GOLANG_MOD_VERSION_ENABLED true
end
