# for tmux
if type -q tmux && test -z $TMUX && status --is-login
    tmux_attach_session_if_needed
end

# supress fish_greeting
set fish_greeting
