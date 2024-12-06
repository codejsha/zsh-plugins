# SPDX-License-Identifier: APACHE-2.0
# SPDX-FileCopyrightText: Copyright 2024 Jinseong Ha

alias dcp="docker compose"
alias dcpat="docker compose attach"
alias dcpbu="docker compose build"
alias dcpco="docker compose config"
alias dcpcp="docker compose cp"
alias dcpcr="docker compose create"
alias dcpdn="docker compose down"
alias dcplo="docker compose logs -f"
alias dcpls="docker compose ls"
alias dcpre="docker compose restart"
alias dcprm="docker compose rm"
alias dcpsta="docker compose start"
alias dcpstp="docker compose stop"
alias dcptop="docker compose top"
alias dcpup="docker compose up"

function dcpexbash() { CONTAINER_NAME="${1}"; if [ -n "${CONTAINER_NAME}" ]; then docker compose exec --detach ${1} /bin/bash -c ${2}; fi; }
function dcpexsh() { CONTAINER_NAME="${1}"; if [ -n "${CONTAINER_NAME}" ]; then docker compose exec --detach ${1} /bin/sh -c ${2}; fi; }
function dcplol() { LINES="${1}"; docker compose logs -f --tail="${LINES}"; }
