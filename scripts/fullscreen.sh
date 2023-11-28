#! /bin/bash

while :
do
    active=$(swaymsg -t get_tree | jq -r 'recurse(.nodes[]) | select(.focused)|.name')
    if [ $active == SP ]
    then
        swaymsg '[class=steamwebhelper] fullscreen enable'
        sleep 1
    else
        sleep 1
    fi
done
