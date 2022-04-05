if type -q npm
    fish_add_path $HOME/.npm-global/bin
end

if type -q nodebrew
    fish_add_path $HOME/.nodebrew/current/bin
end
