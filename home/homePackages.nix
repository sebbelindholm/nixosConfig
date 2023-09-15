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
            yakuake
            spotify
            prismlauncher
            lm_sensors
            webcord
        ];
    };    
}