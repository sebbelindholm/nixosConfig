{ pkgs, nix-doom-emacs, ... }:

{
  #nixpkgs.config.allowUnfreePredicate = (pkg: true);  
  imports = [                              
    ../../home/home.nix
  ];
}