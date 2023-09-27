{ config, pkgs, ... }:

{
	
	nixpkgs.config.allowUnfree = true;
	
    nix = {
        settings = {
            auto-optimise-store = true;
            experimental-features = [ "nix-command" "flakes" ];
        };

        gc = {
            automatic = true;
            dates = "weekly";
            options = "--delete-older-than 2d";
        };
    };
    
}
