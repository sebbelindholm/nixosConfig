{ config, lib, pkgs, host, hyprland, ... }:

{
  environment = {
      variables = {
        XDG_SESSION_TYPE = "wayland";
        XDG_SESSION_DESKTOP = "Hyprland";
        XDG_CURRENT_DESKTOP = "Hyprland";
      };
      
      sessionVariables = {
        GDK_BACKEND = "wayland";
        WLR_NO_HARDWARE_CURSORS = "1";
        MOZ_ENABLE_WAYLAND = "1";
      };
      systemPackages = with pkgs; [
          xwayland
      ];
  };
  programs.hyprland = {
    enable = true;
    package = hyprland.packages.${pkgs.system}.hyprland;
  };

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    #gtkUsePortal = true;
    #extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  };
}
