 let
   nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-unstable";
   pkgs = import nixpkgs { config = {}; overlays = []; };
 in

 pkgs.mkShell {
   packages = with pkgs; [
        cmake
        gnumake
        clang
        glibc
        valgrind
        gcc
   ];


  shellHook = ''
    echo "C shell"
  '';
 }