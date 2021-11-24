function peco_select_history
    if test (count $argv) = 0
        set peco_flags
    else
        set peco_flags --query "$argv"
    end
    history | peco $peco_flags | read foo
    if [ $foo ]
        commandline $foo
    else
        commandline ''
    end
end
