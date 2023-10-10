{ config, pkgs, ... }:

{
	#nixpkgs.config.allowUnfree = true;
	
    environment.systemPackages = with pkgs; [
	lite-xl
	dconf2nix
        wget
        unzip
        zip
        vim
        htop
        btop
        killall
        man-pages
        man-pages-posix
        man
        neofetch
        cmake
        gnumake
        clang
        glibc
        valgrind
        gcc
        killall
        libnotify
        gnome.gnome-keyring
        curl
        gnome.gnome-system-monitor
        nvtop-amd
        eza
        gnugrep
        gtk-engine-murrine
        gnome.gnome-themes-extra
        zulu
        dconf2nix
        gnome.nautilus
        #geogebra
    ];    
}
