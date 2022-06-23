if type -q composer
    fish_add_path $HOME/.composer/vendor/bin
    set -x COMPOSER_MEMORY_LIMIT -1
end
