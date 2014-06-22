export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git rvm npm rake gem bundler ruby brew coffee rails sublime)

source $ZSH/oh-my-zsh.sh

export PATH="/Users/eXiga/.rvm/gems/ruby-2.0.0-p353/bin:/Users/eXiga/.rvm/gems/ruby-2.0.0-p353@global/bin:/Users/eXiga/.rvm/rubies/ruby-2.0.0-p353/bin:/Users/eXiga/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

source ~/.zsh-aliases

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward

autoload -U compinit
compinit

# load custom executable functions
for function in ~/.zsh/*; do
  source $function
done
