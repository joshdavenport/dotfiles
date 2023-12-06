#zmodload zsh/zprof
#export IS_VSCODE=false
#if [[ $(printenv | grep -c "VSCODE_") -gt 0 ]]; then
#  export IS_VSCODE=true
#fi

#if ! $IS_VSCODE; then
#  echo ${(pl.$LINES..\n.)}
#fi


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# prevent oh-my-zsh auto update
DISABLE_AUTO_UPDATE="true"

# Path to your oh-my-zsh installation.
export ZSH=/Users/josh/.oh-my-zsh

PATH="/opt/homebrew/opt/mysql-client/bin:/opt/homebrew/opt/openjdk/bin:/opt/homebrew/sbin:/opt/homebrew/bin:$HOME/bin:$HOME/.cargo/bin:/opt/homebrew/opt/python/libexec/bin:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_CUSTOM="$HOME/.config/oh-my-zsh/custom"
ZLE_RPROMPT_INDENT=0

# plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-vi-mode zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

# User configuration
for file in ~/.{aliases,theme,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

source ~/.functions
