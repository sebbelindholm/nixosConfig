{ config, pkgs, ... }:

{
	#nixpkgs.config.allowUnfree = true;
	
    environment.systemPackages = with pkgs; [
        wget
        unzip
        zip
        vim
        htop
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
        #geogebra
    ];    
}
