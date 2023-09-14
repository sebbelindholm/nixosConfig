{ config, pkgs, ... }:

{
  fonts = {
    fontDir.enable = true;

    fontconfig = {
      antialias = true;
    };

    packages = with pkgs; [
      jetbrains-mono
      ubuntu_font_family
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ];
  };    
}