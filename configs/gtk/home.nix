{ pkgs, ... }:

{
    #home.file.".config/gtk-4.0/gtk.css".source = ./gtk.css;
    #home.file.".config/gtk-3.0/gtk.css".source = ./gtk.css;

    gtk = {
        enable = true;

        #theme.package = pkgs.adw-gtk3;
        #theme.name = "adw-gtk3";
        
        #font.name = "Roboto 12";
        theme = {
        	name = "Gruvbox-Dark-BL";
            package = pkgs.gruvbox-gtk-theme;
        };
        iconTheme = {
            #package = "${import ../icons/gruvbox-plus.nix { inherit pkgs; }}";
            package = pkgs.zafiro-icons;
            name = "Zafiro-icons-Dark";
        };
        cursorTheme = {
            package = pkgs.bibata-cursors;
            name = "Bibata-Modern-Ice";
        };
        
    };   

    home.pointerCursor = {
        package = pkgs.bibata-cursors;
        name = "Bibata-Modern-Ice";
    }; 
}
