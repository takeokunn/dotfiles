if type -q gem
    set -x GEM_HOME $HOME/.gem
    set -x PATH $PATH $GEM_HOME/bin
end

if type -q rbenv
    set -x PATH $PATH $HOME/.rbenv/bin
    source (rbenv init - | psub)
end
