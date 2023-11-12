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


  system.stateVersion = "22.05";
}
