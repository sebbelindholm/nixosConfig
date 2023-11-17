{ config, pkgs, ... }:

{
    hardware = {

        opengl = {
            enable = true;
            driSupport = true;
            driSupport32Bit = true;

            extraPackages = with pkgs; [
                mesa.drivers
            ];
        };

        sensor.iio.enable = false;

    };
}