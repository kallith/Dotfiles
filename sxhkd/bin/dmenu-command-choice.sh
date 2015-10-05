#!/bin/bash

DMENU_ARGS="-fn -xos4-terminus-medium-*-*-*-30-*-*-*-*-*-*-*"

echo_args() {
    for ARG in "$@"
    do
        echo $ARG
    done
}
exec_command=$1
shift
$exec_command $(echo_args "$@" | dmenu $DMENU_ARGS)
exit 0
