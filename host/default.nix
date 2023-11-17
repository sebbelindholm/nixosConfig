{ lib, inputs, nixpkgs, home-manager, user, location, nixos-hardware, hyprland, ... }:

let
  system = "x86_64-linux" ;                               
  lib = nixpkgs.lib;

  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;                          
  };

in
{
  nixos-desktop = lib.nixosSystem {
    inherit system;
    specialArgs = {
      inherit inputs user location hyprland;
      host = {
        hostName = "nixos-desktop";
      };
    };
    modules = [
      ./desktop

      home-manager.nixosModules.home-manager {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.extraSpecialArgs = {
          inherit user inputs;
          host = {
            hostName = "nixos-desktop";
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

  nixos-thinkpad = lib.nixosSystem {
    inherit system;
    specialArgs = {
      inherit inputs user location hyprland lib;
      host = {
        hostName = "nixos-thinkpad";
      };
    };
    modules = [
      ./thinkpad

      nixos-hardware.nixosModules.lenovo-thinkpad-l13
      nixos-hardware.nixosModules.common-gpu-intel 
      nixos-hardware.nixosModules.common-cpu-intel 

      home-manager.nixosModules.home-manager {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.extraSpecialArgs = {
          inherit user;
          host = {
            hostName = "nixos-thinkpad";
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
