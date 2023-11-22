{ config, pkgs, inputs, darwin, ... }:

{
    environment = {
        systemPackages = with pkgs; [
            git
        ];
    };
}