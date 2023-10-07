{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules
      ../../configs
    ];

  services.fprintd = {
    enable = true;

    tod = {
      enable = true;
      driver = pkgs.libfprint-2-tod1-goodix-550a;
    };
  };

  system.stateVersion = "22.05";
}
