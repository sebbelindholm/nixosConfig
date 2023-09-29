{ pkgs, ... }:

{
    gtk = {
        enable = true;
        
        #font.name = "Roboto 12";
        theme = {
            name = "Orchis-Dark";            
            package = pkgs.orchis-theme;
        };
        iconTheme = {
            package = pkgs.papirus-icon-theme;
            name = "Papirus";
        };
        cursorTheme = {
            package = pkgs.bibata-cursors;
            name = "Bibata-Modern-Ice";
        };
        
    };    
}