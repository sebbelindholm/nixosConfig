{ pkgs, ... }:

{
    gtk = {
        enable = true;
        font.name = "Roboto 12";
        theme = {
            name = "Adwaita";            
            #package = pkgs.dracula-theme;
        };
        iconTheme = {
            package = pkgs.papirus-nord;
            name = "Papirus";
        };
        cursorTheme = {
            #package = pkgs.nordzy-cursor-theme;
            name = "Adwaita";
        };
    };    
}