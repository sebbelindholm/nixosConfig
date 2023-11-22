{ config, pkgs, inputs, darwin, ... }:

{
    enviroment = {
        systemPackages = with pkgs; [
            git
        ];
    };

    home = {
        packages = with pkgs; [
            discord
            kitty
            vscode
            neofetch
        ];
    };
}