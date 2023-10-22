{ inputs, ... }:

{
    imports = [
        ./zsh/home.nix
        ./git/home.nix
        ./vim/home.nix
        ./kitty/home.nix
        ./gtk/home.nix
        ./dconf/home.nix
        #./emacs/home.nix
        ./neovim/home.nix
        ./gnome/home.nix
        ./dconf/home.nix
        ./obs/home.nix
        ./hypr/home.nix
        ./micro/home.nix
    ];
}
