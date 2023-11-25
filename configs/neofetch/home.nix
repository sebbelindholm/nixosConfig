{ config, pkgs, lib, ... }:

{
  home.file.".config/neofetch/config.conf".source = ./config.conf;
}