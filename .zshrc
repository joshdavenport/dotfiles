# Path to your oh-my-zsh installation.
export ZSH=/Users/joshuadavenport/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='nerdfont-complete'

# plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting autojump)

source $ZSH/oh-my-zsh.sh

# User configuration
for file in ~/.{aliases,extra,functions,theme1}; do
    [ -r "$file" ] && source "$file"
done
unset file
