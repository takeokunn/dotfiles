if type -q fzf
    set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
end

if type -q exa
    alias ls 'exa'
end

if type -q bat
    alias cat 'bat'
end

if type -q fd
    alias find 'fd'
end

if type -q dog
    alias dig 'dog'
end

if type -q gping
    alias ping 'gping'
end
