if type -q fzf and type -q rg
    set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
end

if type -q exa
    alias ls 'exa'
end

if type -q bat
    set -x MANPAGER 'col -bx | bat -l man -p'
    alias cat 'bat'
end

if type -q dog
    alias dig 'dog'
end

if type -q gping
    alias ping 'gping'
end

if type -q dust
    alias du 'dust'
end

if type -q broot
    alias tree 'broot -ips'
end

if type -q pass
    set -x PASSWORD_STORE_DIR $HOME/.password-store
    set -x PASSWORD_STORE_ENABLE_EXTENSIONS true
end
