{ config, pkgs, hyprland, ... }:

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

  programs.light.enable = true;

  system.stateVersion = "22.05";
}
