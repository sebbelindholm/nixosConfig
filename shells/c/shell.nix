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

		pkg-config
        scdoc
        expat
        libxml2
        wayland-protocols
        libxkbcommon
        json_c
        pcre2
        libevdev
        
   ];


  shellHook = ''
    echo "C shell"
  '';
 }
