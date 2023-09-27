{ pkgs, ... }:

{
  #nixpkgs.config.allowUnfreePredicate = (pkg: true);  
  imports = [                              
    ../../home/home.nix
  ];
}