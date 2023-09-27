{ config, pkgs, lib, ... }:

{
    home.packages = with pkgs; [
    gnome.dconf-editor
    gnomeExtensions.blur-my-shell
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.system-action-hibernate
    gnomeExtensions.impatience
    gnomeExtensions.user-themes
    gnomeExtensions.dash-to-panel
    gnomeExtensions.unblank
  ];
    dconf.settings = {

    };
}