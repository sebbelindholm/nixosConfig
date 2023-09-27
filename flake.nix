{
  description = "My first personal NixOS flake. ";

  inputs = {
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";   

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    home-manager = {                                                     
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager, nixos-hardware, ... }@inputs: 
  let
    user = "sebastian";
    location = "/$HOME/.setup";
  in
  {
    nixosConfigurations = (
     import ./host {
        inherit (nixpkgs) lib;
        inherit inputs nixpkgs user location home-manager;
      }
    );
  };
}
