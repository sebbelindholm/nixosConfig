{ config, pkgs, ... }:

{
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
        #geogebra
    ];    
}
