{ config, pkgs, ... }:

{

    sound.enable = true;

    services = {
        pipewire = {
            enable = true;
            pulse.enable = true;
            alsa = {
                enable = true;
                support32Bit = true;
            };
        };
    };
    hardware.pulseaudio.enable = false;

/*
    hardware.pulseaudio = {
      enable = true;
      support32Bit = true;
    };   
*/
}