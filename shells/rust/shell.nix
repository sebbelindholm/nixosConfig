 let
   nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-unstable";
   pkgs = import nixpkgs { config = {}; overlays = []; };
 in

 pkgs.mkShell {
   packages = with pkgs; [
      rustc
      cargo
      glibc
      cmake
      gcc
   ];


  shellHook = ''
    echo "Rust shell"
  '';
 }