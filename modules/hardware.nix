{ config, pkgs, ... }:

{
    hardware = {

        opengl = {
            enable = true;
            driSupport = true;
            driSupport32Bit = true;

            extraPackages = with pkgs; [
                mesa
            ];
        };

        sensor.iio.enable = false;

    };
}