{ config, pkgs, lib, ... }:

{
  home.file.".config/Code/User/settings.json".source = ./settings.json;
}