{ pkgs, ... }:

{
    home = {
        packages = with pkgs; [
	        neofetch
            firefox
            vscode
            kitty
            pavucontrol
            discord
            spotify
            prismlauncher
            lm_sensors
            comma
            gnome.gnome-tweaks
            webcord
            oversteer
            linuxConsoleTools
            minecraft
            easyeffects
            audacity
        ];
    };    
}
