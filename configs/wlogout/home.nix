{ config, pkgs, lib, ... }:

{
  xdg.configFile."wlogout".source = ./wlogout;
}
