{ inputs, ... }:

{
    imports = [
        ./sway/home.nix
        ./zsh/home.nix
        ./git/home.nix
        ./vim/home.nix
        ./rofi/home.nix
#        ./waybar/home.nix
        ./kitty/home.nix
    ];
}
