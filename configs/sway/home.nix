{ config, pkgs, lib, ... }:

{
    home.file.".config/sway/config".source = ./config;
}