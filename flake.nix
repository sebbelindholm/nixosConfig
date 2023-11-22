{
  description = "My first personal NixOS flake. ";

  inputs = {
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    darwin = {
	    url = "github:lnl7/nix-darwin"; 
	    inputs.nixpkgs.follows = "nixpkgs";
    };  

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    hyprland = {
      url = "github:vaxerski/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {                                                     
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

   ##	ags.url = "github:Aylur/ags";
    
  };

  outputs = { self, nixpkgs, home-manager, nixos-hardware, hyprland, darwin, ... }@inputs: 
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
        inherit inputs nixpkgs home-manager nixos-hardware hyprland vars;
      }
    );

    darwinConfigurations = (
        import ./host/darwin {
	        inherit (nixpkgs) lib;
	        inherit inputs nixpkgs home-manager darwin vars;
	    }
    );
  };
}
