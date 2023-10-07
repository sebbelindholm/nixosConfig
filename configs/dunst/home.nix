{ config, pkgs, lib, ... }:

{
  xdg.configFile."dunst/dunstrc".source = ./dunstrc;
}