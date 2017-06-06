#!/usr/bin/env bash

function info {
   echo -e "\e[32m#\n# ${1}\n#\e[0m"
}

function error {
   echo -e "\e[31m${1}\e[0m"
   exit ${2:-1}
}

function debug {
    echo -e "\e[34m# ${1}\e[0m"
}
