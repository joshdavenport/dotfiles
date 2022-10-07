echo ${(pl.$LINES..\n.)}

# Path to your oh-my-zsh installation.
export ZSH=/Users/josh/.oh-my-zsh

PATH="$HOME/.phpenv/bin:/opt/homebrew/opt/openjdk/bin:/opt/homebrew/bin:$HOME/bin:$HOME/.cargo/bin:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_CUSTOM="$HOME/.config/oh-my-zsh/custom"
ZLE_RPROMPT_INDENT=0

# plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting autojump zsh-vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration
for file in ~/.{aliases,functions,theme,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/Users/josh'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET
