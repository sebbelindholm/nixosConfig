{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      layout = "se";
      dpi = 1;
      displayManager = {
        lightdm.enable = true;
        defaultSession = "budgie-desktop";
      };
      desktopManager.budgie.enable = true;
    };
  };
}