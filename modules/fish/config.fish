# initialize
function fish_prompt
    if [ $status -eq 0 ]
        set status_face (set_color green)"(*´ω｀*) < "
    else
        set status_face (set_color red)"｡+ﾟ(∩´﹏'∩)ﾟ+｡ < "
    end
    printf '%s %s' (set_color yellow)(prompt_pwd) $status_face
end

# alias
alias cdd 'cd ~/Desktop'

# config
set -x EDITOR "emacs -nw"

# keybind
function fish_user_key_bindings
    bind \cr peco_select_history
    bind \co peco_ghq
    bind \cq peco_z
    bind \eg magit
end

# for tmux
if type -q tmux && test -z $TMUX && status --is-login
    tmux_attach_session_if_needed
end
