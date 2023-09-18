{ config, pkgs, ... }:

{
    users.users.sebastian = {
        isNormalUser = true;
        description = "Sebastian Lindholm Gustafsson";
        initialPassword = "pass";
        extraGroups = [ "networkmanager" "wheel" "audio" "sound" "libvirtd" "kvm" "input" ];
        shell = pkgs.zsh;
    };   
}