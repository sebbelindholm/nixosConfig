{ config, pkgs, lib, ... }:

{
  xdg.configFile."wofi/style.css".source = ./style.css;
  xdg.configFile."wofi/config".source = ./config;
}