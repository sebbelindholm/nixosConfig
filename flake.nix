{
  description = "My first personal NixOS flake. ";

  inputs = {

    more-waita = {
      url = "https://github.com/somepaulo/MoreWaita/archive/refs/heads/main.zip";
      flake = false;
    };
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

	ags.url = "github:Aylur/ags";

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    hyprland = {
      url = "github:vaxerski/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {                                                     
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  
  };

  outputs = { self, nixpkgs, home-manager, nixos-hardware, hyprland, ags, more-waita, ... }@inputs: 
  let
    vars = {
      user = "sebastian";
      location = "/$HOME/.setup";
    };
  in
  {
    nixosConfigurations = (
     import ./host {
        inherit (nixpkgs) lib;
        inherit inputs nixpkgs home-manager nixos-hardware hyprland vars ags more-waita;
      }
    );
  };
}
