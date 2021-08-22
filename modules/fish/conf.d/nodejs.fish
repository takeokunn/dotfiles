if type -q npm
    set -x PATH $HOME/.npm-global/bin $PATH
end

if type -q nodebrew
    set -x PATH $PATH $HOME/.nodebrew/current/bin
end
