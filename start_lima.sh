#!/bin/sh

function StartLima {

    limactl start lima
}

function RestartDocker {

    StartLima

    docker restart $(docker ps -a -q)
}

clear
echo ''
echo 'This script will start lima and can start/restart all of your containers.'
echo ''
echo 'ATTENTION!'
echo '    An attempt to start/restart all docker containers will occur.'
echo '    Are you sure that you want to continue?'
echo ''

while true; do
    read -r -p 'Type "y" to continue, "n" to cancel: ' choice
    case "$choice" in
    n | N | not | Not | NOT | nao | NAO | Nao) StartLima ;;
    y | Y | yes | Yes | YES | sim | SIM | Sim) RestartDocker ;;
    *) echo 'Y - yes or N - no' ;;
    esac
done
