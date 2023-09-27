{ pkgs, ... }:

{
    gtk = {
        enable = true;
        
        #font.name = "Roboto 12";
        theme = {
            name = "Fluent";            
            package = pkgs.fluent-gtk-theme;
        };
        #iconTheme = {
        #    package = pkgs.papirus-nord;
        #    name = "Papirus";
        #};
        #cursorTheme = {
            #package = pkgs.nordzy-cursor-theme;
        #    name = "Adwaita";
        #};
        
    };    
}