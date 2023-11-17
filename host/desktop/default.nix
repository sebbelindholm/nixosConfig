{ config, pkgs, hyprland, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules
      ../../configs
    ];

  boot = {
    #kernelParams = [ "intel_iommu=on" "iommu=pt" ];
    initrd.kernelModules = [ "amdgpu" ];
  };

  services = {
    xserver = {
      videoDrivers = [ "amdgpu" ];
    };
  };

  networking.hostName = "nixos-desktop";

  environment.sessionVariables = rec {
    HOSTNAME="nixos-desktop";
  };

  nixpkgs.config.allowUnfree = true;

  systemd.services.fan2go = {
    enable = true;
    description = "Advanced Fan Control program";
    unitConfig = {
      After = "lm-sensors.service";
    };
    serviceConfig = {
      LimitNOFILE=8192;
      Environment="DISPLAY=:0";
      ExecStart="${pkgs.fan2go}/bin/fan2go -c home/sebastian/.setup/configs/fan2go/fan2go.yaml --no-style";
      Restart="always";
      RestartSec="1s";
    };
    wantedBy = [ "multi-user.target" ];
  };

  hardware = {
    opengl = {

        extraPackages = with pkgs; [
          rocm-opencl-icd 
          rocm-opencl-runtime
          amdvlk
          driversi686Linux.amdvlk
          mesa.drivers
        ];

        extraPackages32 = with pkgs; [
          driversi686Linux.amdvlk
        ];
    };

  };

  environment.variables.AMD_VULKAN_ICD = "RADV";


  system.stateVersion = "22.05";
}
