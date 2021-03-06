#!/usr/bin/env bash

# debug
# set -x

is_armstrong() {
  declare -ri INPUT=$1
  declare -i NUM
  declare -i SUM

  for ((i=0; i<${#INPUT}; i++)); do
    NUM=$((${INPUT:$i:1}**${#INPUT}));
    SUM=$((SUM + NUM));
  done

  if [[ $INPUT -eq $SUM ]]; then
    echo 'true'
  else
    echo 'false'
    exit 1
  fi
}

"${@}"
