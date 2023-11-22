{ config, pkgs, lib, ... }:

{
  home.file.".config/kitty/kitty.conf".source = ./kitty.conf;
}
