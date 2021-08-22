if type -q ros
    set -x PATH $PATH $HOME/.roswell/bin
end

if type -q sbcl and type -q rlwrap
    alias sbcl 'rlwrap sbcl'
end
