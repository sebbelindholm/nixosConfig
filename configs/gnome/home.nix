{ config, pkgs, lib, ... }:

{
    home.packages = with pkgs; [
    gnome.dconf-editor
    gnomeExtensions.blur-my-shell
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-panel
    gnomeExtensions.system-action-hibernate
    gnomeExtensions.impatience
  ];
    dconf.settings = {

    };
}