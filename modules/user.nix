{ config, pkgs, ... }:

{
    users.users.sebastian = {
        isNormalUser = true;
        description = "Sebastian Lindholm Gustafsson";
        initialPassword = "pass";
        extraGroups = [ "video" "networkmanager" "wheel" "audio" "sound" "libvirtd" "kvm" "input" ];
        shell = pkgs.zsh;
    };   
}
