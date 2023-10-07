{ config, pkgs, lib, ... }:

{
  xdg.configFile."swaylock/config".source = ./config;
}
