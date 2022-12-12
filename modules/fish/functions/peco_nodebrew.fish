function peco_nodebrew
    set -l new_version (nodebrew list | grep -v "current" | grep -v "^\$" | peco)
    echo "nodebrew use "$new_version
end
