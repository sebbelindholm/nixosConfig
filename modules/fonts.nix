{ config, pkgs, ... }:

{
  fonts = {
    fontDir.enable = true;

    fontconfig = {
      antialias = true;
    };

    packages = with pkgs; [
      roboto
      jetbrains-mono
      ubuntu_font_family
      maple-mono
      maple-mono-NF
      cascadia-code
      nerdfonts
      font-awesome
      papirus-icon-theme
      qogir-icon-theme
      whitesur-icon-theme
      colloid-icon-theme
      adw-gtk3
      nerdfonts

      (nerdfonts.override { fonts = [
        	      	"Ubuntu"
        	      	"UbuntuMono"
        	      	"CascadiaCode"
        	      	"FantasqueSansMono"
        	      	"FiraCode"
        	      	"Mononoki"
       ]; })
    ];
  };    
}
