#enable starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# vim
alias vim='nvim'
alias vim-conf='vim ~/.dotfiles/config/nvim/init.lua'

#tmux
alias tmux-conf='vim ~/.dotfiles/config/tmux/tmux.conf'

# nix home-manager
alias hm-switch='home-manager switch --flake ~/.dotfiles'
alias hm-conf-zshrc='vim ~/.dotfiles/.zshrc'
alias hm-conf-home='vim ~/.dotfiles/home.nix'

# bitcoin
alias bd='bitcoind'
alias bcli='bitcoin-cli'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
