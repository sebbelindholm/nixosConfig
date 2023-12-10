{ inputs, lib, pkgs, default, ... }:

{
  home.packages = with pkgs; [
    grim
    brillo
    slurp
    swappy
    swaybg
    rofi-wayland
    swaylock-effects
    waybar
    dunst
    wlogout
    wl-clipboard
    xdg-utils
    polkit-kde-agent
    pamixer
    cliphist
    wl-clip-persist
    libcanberra-gtk3
	  swww
    hyprpicker
    supergfxctl
    wf-recorder
    wayshot
    imagemagick
    wl-gammactl
  ];

  services.udiskie.enable = true;

  imports = [
    ../dunst/home.nix
    ../waybar/home.nix
    ../wlogout/home.nix
    ../swaylock/home.nix
    ../rofi/home.nix
    ../dunst/home.nix
    ../ags/home.nix
  ];

  #home.sessionVariables = {
  #  XDG_CURRENT_DESKTOP = "Hyprland";
  #  XDG_SESSION_TYPE = "wayland";
  #  XDG_SESSION_DESKTOP = "Hyprland";
  #  QT_QPA_PLATFORM = "wayland;xcb";
  #  QT_AUTO_SCREEN_SCALE_FACTOR = 1;
  #  QT_WAYLAND_DISABLE_WINDOWDECORATION = 1;
  #  SDL_VIDEODRIVER = "wayland";
  #  _JAVA_AWT_WM_NONREPARENTING = 1;
  #  CLUTTER_BACKEND="wayland";
 #   GDK_BACKEND = "wayland,x11";
  #};

  home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;

}
