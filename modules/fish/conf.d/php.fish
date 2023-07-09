if test -d /usr/local/opt/asdf/libexec
    source /usr/local/opt/asdf/libexec/asdf.fish
end

if type -q composer
    fish_add_path $HOME/.composer/vendor/bin
    set -x COMPOSER_MEMORY_LIMIT 4G
end

if test -d ~/.asdf/installs/php/8.2.3/.composer
    fish_add_path ~/.asdf/installs/php/8.2.3/.composer/vendor/bin
end
