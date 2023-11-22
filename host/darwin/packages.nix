{ config, pkgs, inputs, darwin, ... }:

{
    enviroment = {
        systemPackages = with pkgs; [
            git
        ];
    };
}