 let
   nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-unstable";
   pkgs = import nixpkgs { config = {}; overlays = []; };
 in

 pkgs.mkShell {
   packages = with pkgs; [
		git
        cmake
        gnumake
        clang
        glibc
        valgrind
        gcc
        meson
        ninja
        cairo
        pango
   ];


  shellHook = ''
    echo "C shell"
  '';
 }
