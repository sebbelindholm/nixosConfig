{ config, pkgs, ... }:

{

    services.fstrim.enable = true;
    programs.zsh.enable = true;
    programs.dconf.enable = true;
    services.upower.enable = true;
    services.udisks2.enable = true;
    services.locate.enable = true;
    services.locate.package = pkgs.mlocate; 
    services.locate.localuser = null;

/*
    virtualisation.libvirtd.enable = true;
    environment.systemPackages = with pkgs; [ virt-manager ];
    */
}
