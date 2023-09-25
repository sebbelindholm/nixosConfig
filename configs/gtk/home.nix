{ pkgs, ... }:

{
    gtk = {
        enable = true;
        font.name = "Roboto 10";
        theme = {
            name = "WhiteSur-Dark-solid";            
            package = pkgs.whitesur-gtk-theme;
        };
        iconTheme = {
            package = pkgs.whitesur-icon-theme;
            name = "WhiteSur-dark";
        };
        cursorTheme = {
            package = pkgs.apple-cursor;
            name = "macOS-BigSur";
        };
    };    
}