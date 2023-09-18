{ pkgs, ... }:

{
    gtk = {
        enable = true;
        font.name = "Roboto 10";
        #font.name = "Maple Mono 12";
        theme = {
            name = "WhiteSur-Dark-solid";            
            package = pkgs.whitesur-gtk-theme;
            #name = "Nordic";            
            #package = pkgs.nordic;
        };
        iconTheme = {
            package = pkgs.whitesur-icon-theme;
            name = "WhiteSur-dark";
            #package = pkgs.papirus-nord;
            #name = "Papirus-Dark";
        };
        cursorTheme = {
            package = pkgs.apple-cursor;
            name = "macOS-BigSur";
            #package = pkgs.nordzy-cursor-theme;
            #name = "Nordzy-cursors";
        };
    };    
}