{ pkgs, ... }:

{
    gtk = {
        enable = true;
        font.name = "Maple Mono 12";
        theme = {
            name = "tokyo-night-gtk";            
            package = pkgs.tokyo-night-gtk;
        };
    };    
}