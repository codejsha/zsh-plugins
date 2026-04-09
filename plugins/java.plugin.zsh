#!/usr/bin/env zsh

function change-java() {
  local version="${1:?Usage: change-java <version>}"

  if [[ ! "${version}" =~ ^[0-9]+$ ]]; then
    echo "Invalid version: ${version}" >&2
    return 1
  fi

  local jdk_home="/Library/Java/JavaVirtualMachines/temurin-${version}.jdk/Contents/Home"

  if [[ ! -d "${jdk_home}" ]]; then
    echo "JDK not found: ${jdk_home}" >&2
    return 1
  fi

  export JAVA_HOME="${jdk_home}"
  "${JAVA_HOME}/bin/java" -version
}
