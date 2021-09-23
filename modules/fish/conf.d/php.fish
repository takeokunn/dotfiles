if type -q composer
    set PATH $PATH $HOME/.composer/vendor/bin
    set -x COMPOSER_MEMORY_LIMIT 4G
end
