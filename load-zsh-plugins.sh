#!/usr/bin/env zsh

script_dir=$(dirname "$(realpath "$0")")
for plugin in "${script_dir}"/**/*.plugin.zsh; do
  [ -f "${plugin}" ] && source "${plugin}"
done
