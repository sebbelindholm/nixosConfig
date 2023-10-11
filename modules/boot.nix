{ config, pkgs, ... }:

{
    boot = {
        kernelPackages = pkgs.linuxPackages_latest;
        loader = {
            systemd-boot.enable = true;
            systemd-boot.configurationLimit = 5;
            efi.canTouchEfiVariables = true;
            efi.efiSysMountPoint = "/boot";
            timeout = 3;
        };

        plymouth = {
            enable = true;
        };

    };
}