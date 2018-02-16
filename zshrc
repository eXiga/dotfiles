export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(rvm npm rake gem bundler ruby brew)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/Library/Frameworks/Mono.framework/Versions/Current/bin/:$HOME/.fastlane/bin:$PATH"

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

# added by travis gem
[ -f /Users/antonkostenich/.travis/travis.sh ] && source /Users/antonkostenich/.travis/travis.sh


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

. /Users/antonkostenich/.opam/opam-init/init.zsh > /dev/null 3> /dev/null || true

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="/Users/antonkostenich/.local/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
