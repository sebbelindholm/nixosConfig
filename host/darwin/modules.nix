{ config, pkgs, inputs, darwin, ... }:

{
    imports = [
        ../../configs/zsh/home.nix
        ../../configs/git/home.nix
    ];
}