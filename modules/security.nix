{ config, pkgs, ... }:

{
    security = {
        polkit.enable = true;
        rtkit.enable = true;

        pam.services.swaylock = {};
    };
}