if type -q fzf and type -q rg
    set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
end

if type -q eza
    alias ls 'eza'
end

if type -q bat
    set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
    alias cat 'bat'
end

if type -q gping
    alias ping 'gping'
end

if type -q dust
    alias du 'dust'
end

if type -q pass
    set -x PASSWORD_STORE_DIR $HOME/ghq/github.com/takeokunn/password-store
    set -x PASSWORD_STORE_ENABLE_EXTENSIONS true
end

if test -d $HOME/.ghq/github.com/OfflineIMAP/offlineimap3/bin
    fish_add_path $HOME/.ghq/github.com/OfflineIMAP/offlineimap3/bin
end
