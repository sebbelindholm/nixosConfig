{ lib, inputs, nixpkgs, darwin, home-manager, vars, ...}:

let
  system = "aarch64-darwin";                           
in
{
  macbookM1 = darwin.lib.darwinSystem {                
    inherit system;
    specialArgs = { inherit inputs vars; };
    modules = [                                           
      ./macbook.nix
      ./modules.nix
      ./packages.nix
      
      home-manager.darwinModules.home-manager {           
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
      }
    ];
  };
}