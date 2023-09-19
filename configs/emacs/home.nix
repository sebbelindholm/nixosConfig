{ pkgs, ... }:

{
    programs = {
        emacs = {
            enable = false;
            package = pkgs.emacs;
        };
    };
}