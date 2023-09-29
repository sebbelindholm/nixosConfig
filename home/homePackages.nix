{ pkgs, ... }:

{
    home = {
        packages = with pkgs; [
	        geany
	        neofetch
            google-chrome
            firefox
            vscode
            kitty
            pavucontrol
            discord
            spotify
            prismlauncher
            lm_sensors
            dwt1-shell-color-scripts
            plank
            bamf #Needed for plank
            comma
            gnome.gnome-tweaks
            webcord
            oversteer
            linuxConsoleTools
        ];
    };    
}
