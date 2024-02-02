if type -q direnv
    set -gx DIRENV_LOG_FORMAT ""
    eval (direnv hook fish)
end
