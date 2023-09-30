{ inputs, ... }:

{
    imports = [
        #./sway/home.nix
        ./zsh/home.nix
        ./git/home.nix
        ./vim/home.nix
        #./rofi/home.nix
        #./waybar/home.nix
        ./kitty/home.nix
        #./mako/home.nix
        ./gtk/home.nix
        #./i3/home.nix
        ./dconf/home.nix
        ./emacs/home.nix
        ./neovim/home.nix
        ./gnome/home.nix
        ./dconf/home.nix
        ./obs/home.nix
    ];
}
