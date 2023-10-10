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
      (nerdfonts.override { fonts = [ "JetBrainsMono" "Iosevka" ]; })
    ];
  };    
}