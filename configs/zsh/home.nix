{pkgs, ...}:

{
    programs = {
        zsh = {
            enable = true;
            enableAutosuggestions = true; 
            #syntaxHighlighting = true;
            enableCompletion = true;

            oh-my-zsh =  {
                enable = true;

                plugins = [
                    "git"
                ];

                theme = "robbyrussell";
            };
        };
    };
}