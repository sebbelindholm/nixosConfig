{ pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
  }
  #nixpkgs.config.allowUnfreePredicate = (pkg: true);  
  imports = [                              
    ../../home/home.nix
  ];
}