if type -q gem
    set -x GEM_HOME $HOME/.gem
    fish_add_path $GEM_HOME/bin
end

if type -q rbenv
    fish_add_path $HOME/.rbenv/bin
    source (rbenv init - | psub)
end
