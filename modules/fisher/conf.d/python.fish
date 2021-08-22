if type -q pyenv
    set -x PYENV_ROOT $HOME/.pyenv
    set -x PATH $PATH $PYENV_ROOT/bin
    source (pyenv init - | psub)
end
