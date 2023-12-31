{ config, pkgs, ... }:

{
	
    environment.systemPackages = with pkgs; [

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

		networkmanagerapplet
        blueman
        nodejs
        udiskie
		xwaylandvideobridge
        clinfo
        vulkan-tools
        glxinfo
        libva-utils
	    dconf2nix
        fan2go
		sassc
        micro
        wget
        unzip
        lm_sensors
        zip
        vim
        htop
        btop
        killall
        man-pages
        man-pages-posix
        man
        neofetch
        killall
        libnotify
        gnome.gnome-keyring
        curl
        nvtop-amd
        eza
        gnugrep
        ripgrep
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
        gobject-introspection 
        (python310.withPackages (p: with p; [
            pygobject3 
            requests
            python-pam
        ]))

        gradience

    ];    
}
