{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules
      ../../configs
    ];

  boot = {
    kernelParams = [ "intel_iommu=on" "iommu=pt" ];
    initrd.kernelModules = [ "amdgpu" ];
  };

  services = {
    xserver = {
      videoDrivers = [ "amdgpu" ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "22.05";
}
