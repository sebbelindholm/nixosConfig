{ config, pkgs, lib, ... }:

{
    home.file."~/.config/sway/config".source = config.lib.file.mkOutOfStoreSymlink "~/.setup/configs/sway/config";
    #xdg.configFile."sway/config".source = "~/.setup/configs/sway/config";
}