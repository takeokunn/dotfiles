if test -d $HOME/.docker
    set --export --prepend PATH $HOME/.docker/bin
end

if type -q docker
    set -x DOCKER_BUILDKIT 1
    set -x COMPOSE_DOCKER_CLI_BUILD 1
end
