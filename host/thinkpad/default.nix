{ config, pkgs, hyprland, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules
      ../../configs
    ];

  networking.hostName = "nixos-thinkpad";

  environment.sessionVariables = rec {
    HOSTNAME="nixos-thinkpad";
  };

  programs.light.enable = true;

  system.stateVersion = "22.05";
}
