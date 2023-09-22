{pkgs, ...}:

{
    programs = {
        zsh = {
            enable = true;
            enableAutosuggestions = true; 
            #syntaxHighlighting = true;
            enableCompletion = true;

            shellAliases = {
                ls="eza --icons --grid --classify --colour=auto --sort=type --group-directories-first --header --modified --created --git --binary --group";
                build-desktop="sudo nixos-rebuild switch --flake ~/.setup#desktop";
            };
            
            oh-my-zsh =  {
                enable = false;

                plugins = [
                    "git"
                ];

                theme = "robbyrussell";
            };
        };
    };

    programs.starship = {
    enable = true;
        # Configuration written to ~/.config/starship.toml
        settings = {
        # add_newline = false;

        # character = {
        #   success_symbol = "[➜](bold green)";
        #   error_symbol = "[➜](bold red)";
        # };

        # package.disabled = true;
    };
  };

}