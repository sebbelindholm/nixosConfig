{ lib, inputs, nixpkgs, home-manager, vars, nixos-hardware, hyprland, ... }:

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
      inherit inputs vars hyprland;
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
          inherit vars inputs;
          host = {
            hostName = "nixos-desktop";
          };
        };
        home-manager.users.${vars.user} = {
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
      inherit inputs vars hyprland lib;
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
          inherit vars;
          host = {
            hostName = "nixos-thinkpad";
          };
        };
        home-manager.users.${vars.user} = {
          home.stateVersion = "22.05";
          imports = [ 
            (import ./thinkpad/home.nix) 
          ];
        };
      }
    ];
  };
}
