if type -q php
    fish_add_path /usr/local/opt/php@8.1/bin
    fish_add_path /usr/local/opt/php@8.1/sbin
end

if type -q composer
    set PATH $PATH $HOME/.composer/vendor/bin
    set -x COMPOSER_MEMORY_LIMIT 4G
end
