#Alias
alias config='/usr/bin/git --git-dir=/Users/sebastian/.setup/ --work-tree=/Users/sebastian'
alias ls='eza --icons --grid --classify --colour=auto --sort=type --group-directories-first --header --modified --created --git --binary --group'
alias ssh-desktop='ssh sebastian@slindholm.com'

#Eval
eval "$(starship init zsh)"

#Plugins
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-syntax-highlighting" "122dc46"