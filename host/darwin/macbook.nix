{ config, pkgs, inputs, darwin, vars, ... }:

{

  nixpkgs.config.allowUnfree = true;

  users.users.${vars.user} = {            
    home = "/Users/${vars.user}";
    shell = pkgs.zsh;                    
  };

  networking = {
    computerName = "macbookM1";             
    hostName = "macbookM1";
  };

  programs = {
    zsh.enable = true;                   
  };

  homebrew = {                           
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };
    brews = [

    ];
    casks = [

    ];
  };

  nix = {
    useDaemon = true;
    package = pkgs.nix;
    gc = {                               
      automatic = true;
      interval.Day = 7;
      options = "--delete-older-than 7d";
    };
    extraOptions = ''
      auto-optimise-store = true
      experimental-features = nix-command flakes
    '';
  };                           

}