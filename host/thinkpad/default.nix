{ config, pkgs, hyprland, lib, ... }:

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
   # LIBVA_DRIVER_NAME="i965";

  };

  programs.light.enable = true;

 /**
  boot.initrd.kernelModules = [ "i915" ];

  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      vaapiIntel         # LIBVA_DRIVER_NAME=i965 (older but works better for Firefox/Chromium)
      vaapiVdpau
      libvdpau-va-gl
    ];
  };

  hardware.opengl.extraPackages32 = with pkgs.pkgsi686Linux; [ vaapiIntel ];
**/

  system.stateVersion = "22.05";
}
