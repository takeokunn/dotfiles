if type -q direnv
    set -x DIRENV_LOG_FORMAT ""
    eval (direnv hook fish)
end
