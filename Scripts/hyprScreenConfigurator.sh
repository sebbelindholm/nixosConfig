#!/bin/sh

case $HOSTNAME in
  nixos-desktop) 
    hyprctl keyword monitor DP-1, 3440x1440@100, 0x0, 1.0
    hyprctl keyword monitor HDMI-A-1, 1920x1080@144, 760x1440, 1.0
    ;;

  nixos-thinkpad) 
    hyprctl keyword monitor eDP-1, 1920x1080@60, 0x0, 1.0
    ;;
esac
