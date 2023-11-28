#!/bin/sh
dconf dump / | dconf2nix > dconf.nix
rm -rf /home/sebastian/.setup/configs/dconf/dconf.nix
mv dconf.nix /home/sebastian/.setup/configs/dconf/dconf.nix 
