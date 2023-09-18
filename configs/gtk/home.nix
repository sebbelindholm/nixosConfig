{ pkgs, ... }:

{
    gtk = {
        enable = true;
        font.name = "Maple Mono 12";
        theme = {
            name = "Nordic";            
            package = pkgs.nordic;
        };
        iconTheme = {
            package = pkgs.papirus-nord;
            name = "Papirus-Dark";
        };
        cursorTheme = {
            package = pkgs.nordzy-cursor-theme;
            name = "Nordzy-cursors";
        };
    };    
}