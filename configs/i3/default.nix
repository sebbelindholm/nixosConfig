{ config, pkgs, ... }:

{
    services = {
        xserver = {
            windowManager.i3 = {
                enable = true;

                extraPackages = with pkgs; [
                    dmenu 
                    polybar
                    picom-jonaburg
                    dunst
                    gnome.gnome-screenshot
                    feh
                    xorg.xrandr
                ];
            };
        };
    };
}
