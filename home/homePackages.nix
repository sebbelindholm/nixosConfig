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
            dconf
            prismlauncher
            lm_sensors
            fanctl
        ];
    };    
}