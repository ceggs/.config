# zsh home
export ZSH=$HOME/.config/zsh

#zsh plugins 
[[ -f $ZSH/plugins/plugins.zsh ]] && source $ZSH/plugins/plugins.zsh

# enable starship
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


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/christopher/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/christopher/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/christopher/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/christopher/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export PATH="/opt/homebrew/opt/rustup/bin:$PATH"'