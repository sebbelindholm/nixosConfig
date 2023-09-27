{ pkgs, ... }:

{
    home = {
        packages = with pkgs; [
            neofetch
            #google-chrome
            firefox
            #vscode
            kitty
            pavucontrol
            #discord
            #spotify
            prismlauncher
            lm_sensors
            dwt1-shell-color-scripts
            plank
            bamf #Needed for plank
            comma
        ];
    };    
}