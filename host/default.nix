{ lib, inputs, nixpkgs, home-manager, user, location, nixos-hardware, ... }:

let
  system = "x86_64-linux" ;                               
  lib = nixpkgs.lib;

  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;    
    config.allowUnfreePredicate = (pkg: true);                        
  };

in
{
  desktop = lib.nixosSystem {
    inherit system;
    specialArgs = {
      inherit inputs user location;
      host = {
        hostName = "desktop";
      };
    };
    modules = [
      ./desktop

      home-manager.nixosModules.home-manager {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.extraSpecialArgs = {
          inherit user;
          host = {
            hostName = "desktop";
          };
        };
        home-manager.users.${user} = {
          home.stateVersion = "22.05";
          imports = [ 
            (import ./desktop/home.nix) 
            ];
        };
      }
    ];
  };

  thinkpad = lib.nixosSystem {
    inherit system;
    specialArgs = {
      inherit inputs user location;
      host = {
        hostName = "thinkpad";
      };
    };
    modules = [
      ./thinkpad

      nixos-hardware.nixosModules.lenovo-thinkpad-l13

      home-manager.nixosModules.home-manager {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.extraSpecialArgs = {
          inherit user;
          host = {
            hostName = "thinkpad";
          };
        };
        home-manager.users.${user} = {
          home.stateVersion = "22.05";
          imports = [ 
            (import ./thinkpad/home.nix) 
            ];
        };
      }
    ];
  };
}
