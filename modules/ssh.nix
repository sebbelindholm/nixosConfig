{ pkgs, ... }:

{
    services = {
        openssh = {
            enable = false;
        };
    };
}