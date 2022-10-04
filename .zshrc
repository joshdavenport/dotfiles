# Path to your oh-my-zsh installation.
export ZSH=/Users/josh/.oh-my-zsh

PATH="$HOME/.phpenv/bin:/opt/homebrew/opt/openjdk/bin:/opt/homebrew/bin:$HOME/bin:$HOME/.cargo/bin:$PATH"
PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/qt@5/lib"
export CPPFLAGS="-I/opt/homebrew/opt/qt@5/include"

#PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_CUSTOM="$HOME/.config/oh-my-zsh/custom"

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
