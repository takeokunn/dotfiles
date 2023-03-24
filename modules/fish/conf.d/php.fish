if test -d /usr/local/opt/asdf/libexec
    source /usr/local/opt/asdf/libexec/asdf.fish
end

if type -q composer
    fish_add_path $HOME/.composer/vendor/bin
    set -x COMPOSER_MEMORY_LIMIT 4G
end
