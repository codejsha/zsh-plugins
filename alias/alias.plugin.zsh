# SPDX-License-Identifier: APACHE-2.0
# SPDX-FileCopyrightText: Copyright 2024 Jinseong Ha

function als() {
  local args="${1}"
  local arr=("${(f)$(alias)}")
  local prev_group curr_group

  if [[ -n "${arr}" ]]; then
    for line in "${arr[@]}"; do
      parts=("${line%%=*}" "${line#*=}")
      alias="${parts[1]}"
      actual="${parts[2]//\'/}"
      base="${${actual%% *}##*/}"

      if [[ -n "${args}" ]]; then
        if [[ "${alias}" == *"${args}"* || "${actual}" == *"${args}"* ]]; then
          curr_group="${base}"
          if [[ "${prev_group}" != "${curr_group}" ]]; then
            echo -e "\n\e[32m[${base}]\e[0m"
          fi
          width=$(( ${#alias} < 10 ? 10 : 20 ))
          printf "  \e[33m%-${width}s\e[0m%s\n" "${alias}" "${actual}"
          prev_group="${base}"
        fi
      else
        curr_group="${base}"
        if [[ "${prev_group}" != "${curr_group}" ]]; then
          echo -e "\n\e[32m[${base}]\e[0m"
          prev_group="${base}"
        fi
        width=$(( ${#alias} < 10 ? 10 : 20 ))
        printf "  \e[33m%-${width}s\e[0m%s\n" "${alias}" "${actual}"
      fi
    done
  fi
}
