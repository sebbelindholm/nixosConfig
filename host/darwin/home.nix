{ config, pkgs, inputs, darwin, vars, ... }:

{
    imports = [
        ../../configs/zsh/home.nix
        ../../configs/git/home.nix
    ];

    home = {
        packages = with pkgs; [
            discord
            kitty
            vscode
            neofetch
        ];
    };
}