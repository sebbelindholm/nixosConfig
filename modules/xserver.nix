{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      layout = "se";
      xkbOptions = "ctrl:nocaps";
      deviceSection = ''
      Option "VariableRefresh" "true"
      '';
      dpi = 1;
      displayManager = {
        lightdm.enable = true;
        defaultSession = "budgie-desktop";
      };
      desktopManager = {
        budgie.enable = true;
        #gnome.enable = true;
      };
    };
  };
}
