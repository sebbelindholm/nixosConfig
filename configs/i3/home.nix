{ config, pkgs, lib, ... }:

{
    home.file.".config/i3/config".source = ./config;
}