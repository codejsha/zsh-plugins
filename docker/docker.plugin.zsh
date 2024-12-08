#!/usr/bin/env zsh

alias dcat="docker container attach"
alias dcin="docker container inspect"
alias dclo="docker container logs -f"
alias dclot="docker container logs -f --tail"
alias dcls="docker container ls"
alias dclsall="docker container ls --all"
alias dcpru="docker container prune"
alias dcre="docker container restart"
alias dcrm="docker container rm"
alias dcrmall="docker container rm \$(docker container ls --all --quiet)"
alias dcrun="docker container run"
alias dcsta="docker container start"
alias dcstp="docker container stop"
alias dibu="docker image build"
alias dihi="docker image history"
alias dils="docker image ls"
alias dipl="docker image pull"
alias dipru="docker image prune"
alias dipu="docker image push"
alias dirm="docker image rm"
alias dirmall="docker image rm \$(docker image ls --all --quiet)"
alias dirmdgl="docker image rm \$(docker image ls --all --quiet --filter dangling=true)"
alias ditg="docker image tag"
alias dncr="docker network create"
alias dnin="docker network inspect"
alias dnls="docker network ls"
alias dnpru="docker network prune"
alias dnrm="docker network rm"
alias dsr="docker search"
alias dsroff="docker search --filter=is-official=true"
alias dvcr="docker volume create"
alias dvls="docker volume ls"
alias dvpru="docker volume prune"
alias dvrm="docker volume rm"

function dcexbash() { CONTAINER_NAME="${1}"; if [ -n "${CONTAINER_NAME}" ]; then docker container exec -it ${1} /bin/bash; fi; }
function dcexsh() { CONTAINER_NAME="${1}"; if [ -n "${CONTAINER_NAME}" ]; then docker container exec -it ${1} /bin/sh; fi; }
function dhubimtg() { curl --silent "https://registry.hub.docker.com/v2/repositories/library/${1}/tags/" | jq '."results"[]["name"]' | tr -d '"'; }
