{ config, pkgs, ... }:

{

    services.fstrim.enable = true;
    programs.zsh.enable = true;
    programs.dconf.enable = true;
    programs.upower.enable = true;
    #programs.kdeconnect.enable = true;

/*
    virtualisation.libvirtd.enable = true;
    environment.systemPackages = with pkgs; [ virt-manager ];
    */
}
