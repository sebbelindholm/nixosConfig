{ lib, inputs, nixpkgs, darwin, home-manager, vars, ...}:

let
  system = "aarch64-darwin";   
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };                        
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
        home-manager.extraSpecialArgs = {
          inherit vars inputs;
          host = {
            hostName = "macbookM1";
          };
        }; 
        home-manager.users.${vars.user} = {
          home.stateVersion = "22.05";
          imports = [ 
            (import ./home.nix) 
          ];
        };       
      }
    ];
  };
}