if type -q tfenv
    fish_add_path $HOME/.tfenv/bin
    set -x TFENV_AUTO_INSTALL true
end
