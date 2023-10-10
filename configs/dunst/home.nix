{ config, pkgs, lib, ... }:

{
  xdg.configFile."dunst/dunstrc".source = ./dunstrc;
  xdg.configFile."dunst/scripts".source = ./scripts;
  xdg.configFile."dunst/assets".source = ./assets;
}