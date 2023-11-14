{ config, pkgs, lib, ... }:

{
  xdg.configFile."btop/btop.conf".source = ./btop.conf;
}
