#! /bin/sh

dconf dump / | dconf2nix >> /home/sebastian/.setup/configs/dconf/dconf.nix