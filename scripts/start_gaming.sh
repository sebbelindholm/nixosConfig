#! /bin/bash

case $1 in
    start)
        echo -n "Have you connected bluetooth controllers? (y/n) "
        read ready

        if [ $ready == "y" ]
        then
            killall steam steamwebhelper
            notify-send "Starting game mode"
            sleep 2
            swaymsg "output DP-1 disable"
            swaymsg "output DP-2 disable"
            swaymsg "output HDMI-A-1 enable"
            wpctl set-default 66
            wpctl set-profile 66 4
            swaymsg "workspace 10"
            swaymsg "exec 'steam -gamepadui -fullscreen'"
        else
            notify-send "Connect Controllers before"
            killpid=$(pgrep fullscreen.sh)
            kill $killpid
            exit
        fi
    ;;
    stop)
        killpid=$(pgrep fullscreen.sh)
        kill $killpid
        swaymsg "output HDMI-A-1 disable"
        killall steam steamwebhelper
        swaymsg "output DP-1 enable"
        swaymsg "output DP-2 enable"
        swaymsg "workspace 1"
        wpctl set-default 66
        wpctl set-profile 66 1
        notify-send "Default mode"
    ;;
    couch)
        notify-send "Starting couch mode"
        sleep 2
        swaymsg "output DP-1 disable"
        swaymsg "output DP-2 disable"
        swaymsg "output HDMI-A-1 enable"
        wpctl set-default 66
        wpctl set-profile 4
    ;;
esac

#alsa_output.pci-0000_03_00.1.hdmi-stereo
