{ config, pkgs, lib, ... }:

{
  xdg.configFile."fan2go/fan2go.yaml".source = ./fan2go.yaml;
}