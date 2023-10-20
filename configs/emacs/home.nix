{ pkgs, nix-doom-emacs, ... }:

{
    programs = {
        doom-emacs = {
            enable = false;
            doomPrivateDir = ../doom;
        };
    };
}