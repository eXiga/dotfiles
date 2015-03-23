export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(rvm npm rake gem bundler ruby brew coffee rails sublime)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source ~/.zsh-aliases
source ~/.nvm/nvm.sh

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

autoload -U compinit
compinit

# load custom executable functions
for function in ~/.zsh/*; do
  source $function
done
