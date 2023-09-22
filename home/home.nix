{ pkgs, inputs, ... }:

{
    imports = [
        ../configs/home.nix
        ./homePackages.nix
    ];

    programs = {
        home-manager.enable = true;
    };
}
