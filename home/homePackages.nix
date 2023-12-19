{ pkgs, ... }:

{
    home = {
        packages = with pkgs; [
	        neofetch
            unityhub
			vlc
            firefox
			element-desktop
            vscode
            kitty
            pavucontrol
            discord
            spotify
            prismlauncher
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
