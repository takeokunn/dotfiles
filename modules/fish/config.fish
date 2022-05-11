# for tmux
if type -q tmux && test -z $TMUX && status --is-login
    tmux_attach_session_if_needed
end

# for vi-mode
# fish_vi_key_bindings default
