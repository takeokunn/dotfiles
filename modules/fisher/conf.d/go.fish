if type -q go
    set -x GOROOT (go env GOROOT)
    set -x GOPATH $HOME/projects/go
    set -x PATH $PATH $GOPATH/bin
end

if type -q goenv
    set -x GOENV_ROOT $HOME/.goenv
    set -x PATH $PATH $GOENV_ROOT/bin
    source (goenv init - | psub)
    set -x PATH $PATH $GOENV_ROOT/bin
    set -x PATH $PATH $GOPATH/bin
end
