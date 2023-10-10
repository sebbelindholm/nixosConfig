{ config, pkgs, ... }:

{
	#nixpkgs.config.allowUnfree = true;
	
    environment.systemPackages = with pkgs; [
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
        gnome.gnome-tweaks
        gnome.gnome-themes-extra
        gtk-engine-murrine
        playerctl
        qt6.qtwayland
        libsForQt5.qt5.qtquickcontrols2
        libsForQt5.qt5.qtgraphicaleffects
        libsForQt5.qtstyleplugin-kvantum
        (python310.withPackages (p: with p; [
            pygobject3 
            requests
        ]))
        #(python38.withPackages(ps: with ps; [ PyGObject requests ]))
        #geogebra
    ];    
}
