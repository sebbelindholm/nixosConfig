{ pkgs, ... }:

{
    gtk = {
        enable = true;
        
        #font.name = "Roboto 12";
        theme = {
            name = "Tokyonight-Dark-BL";
            package = pkgs.tokyo-night-gtk;
            #name = "Orchis-Dark";            
            #package = pkgs.orchis-theme ;
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