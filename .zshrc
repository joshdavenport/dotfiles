# Path to your oh-my-zsh installation.
export ZSH=/Users/joshuadavenport/.oh-my-zsh

PATH="/usr/local/opt/inetutils/libexec/gnubin:/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/opt/mysql-client/bin:$HOME/bin:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_CUSTOM="$HOME/.config/oh-my-zsh/custom"

# plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting autojump)

source $ZSH/oh-my-zsh.sh

# User configuration
for file in ~/.{aliases,extra,functions,theme}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
