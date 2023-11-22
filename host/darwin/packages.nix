{ config, pkgs, inputs, darwin, ... }:

{
    envirnoment = {
        systemPackages = with pkgs; [
            git
        ];
    };
}