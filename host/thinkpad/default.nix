{ config, pkgs, hyprland, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules
      ../../configs
    ];

  networking.hostName = "nixos-thinkpad";

  programs.light.enable = true;

  system.stateVersion = "22.05";
}
