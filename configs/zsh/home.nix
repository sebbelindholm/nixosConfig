{pkgs, ...}:

{
    programs = {
        zsh = {
            enable = true;
            enableAutosuggestions = true; 
            #syntaxHighlighting = true;
            enableCompletion = true;
            syntaxHighlighting.enable = true;

            shellAliases = {
                ls="eza --icons --grid --classify --colour=auto --sort=type --group-directories-first --header --modified --created --git --binary --group";
                build-system="sudo nixos-rebuild switch --flake ~/.setup";
                cleanup="nix-collect-garbage -d && sudo nix-collect-garbage -d";
                save-gnome="/home/sebastian/.setup/Scripts/saveDconf.sh";
                ssh-desktop="ssh sebastian@slindholm.com";
                c-shell="nix-shell /home/sebastian/.setup/shells/c/shell.nix";
                rust-shell="nix-shell /home/sebastian/.setup/shells/rust/shell.nix";
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