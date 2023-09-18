{ pkgs, ... }:

{
    home = {
        packages = with pkgs; [
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
            webcord
            dwt1-shell-color-scripts
            gamescope
            xwayland
            lutris
            plank
            bamf
        ];
    };    
}