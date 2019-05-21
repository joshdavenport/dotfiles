# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/joshuadavenport/.oh-my-zsh

POWERLEVEL9K_MODE='awesome-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
for file in ~/.{aliases,extra,functions}; do
    [ -r "$file" ] && source "$file"
    echo "$file"
done
unset file

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

PROMPT_EOL_MARK=''

zshcolors() {
  for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
}

EMOJIS=(💩 🐦 🚀 🐞 🎨 🍕 🐭 👽 ☕️ 🔬 💀 🐷 🐼 🐶 🐸 🐧 🐳 🍔 🍣 🍻 🔮 💰 💎 💾 💜 🍪 🌞 🌍 🐌 🐓 🍄 😶 😎 👻 💡 💯 )
SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};

prompt_zsh_tfl() {
    local content=""
    if [[ $(cat ~/.tfl_piccadilly_status) != "" ]]; then
       content+="\UF207 P($(cat ~/.tfl_piccadilly_status))  "
    fi

    if [[ $(cat ~/.tfl_northern_status) != "" ]]; then
       content+="\UF207 N($(cat ~/.tfl_northern_status))  "
    fi

    content=$(echo $content | xargs)

    if [[ ! -z "${content}" ]]; then
        $1_prompt_segment "$0" "$2" "160" "white" "$content" "#"
    fi
}

prompt_zsh_battery_level() {
    percentage=`pmset -g ps  |  sed -n 's/.*[[:blank:]]+*\(.*%\).*/\1/p'`
    percentage=`echo "${percentage//\%}"`
    local color='%F{red}'
    local symbol="\uf00d"
    if [ $(bc <<< "scale=2 ; $percentage<25") = '1' ]
    then symbol="\uf244" ; color='%F{red}' ;
        #Less than 25
    fi
        
    if [ $(bc <<< "scale=2 ; $percentage>=25") = '1' ] && [ $(bc <<< "scale=2 ; $percentage<50") = '1' ]
    then symbol='\uf243' ; color='red';
        #25%
    fi

    if [ $(bc <<< "scale=2 ; $percentage>=50") = '1' ] && [ $(bc <<< "scale=2 ; $percentage<75") = '1' ]  
    then symbol="\uf242" ; color='yellow}';
        #50%
    fi

    if [ $(bc <<< "scale=2 ; $percentage>=75") = '1' ] && [ $(bc <<< "scale=2 ; $percentage<100") = '1' ]
    then symbol="\uf241" ; color='blue';
        #75%
    fi  
 
    if [ $(bc <<< "scale=2 ; $percentage>99") = '1' ]
    then symbol="\uf240" ; color='green';
        #100%
    fi

    pmset -g ps | grep "discharging" >& /dev/null
    if [ $? -eq 0 ]; then
       true;
    else;
       color='green';
    fi

    local content=" $symbol ";
    $1_prompt_segment "$0" "$2" "238" "$color" "$content" "#"
}



POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{248} ${SELECTED_EMOJI} %f%F{248}%k\ue0b0%f "
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{white}%F{black} `date +%T` \UE12E %f%k%F{white}%f "

#POWERLEVEL9K_ZSH_BATTERY_LEVEL_BACKGROUND='040'

POWERLEVEL9K_USER_DEFAULT_FOREGROUND='242'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='248'

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='117'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_BACKGROUND='117'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='117'

# Battery
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='black'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='yellow'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='040'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='blue'
#POWERLEVEL9K_BATTERY_

# Time
#POWERLEVEL9K_TIME_FORMAT="%F{black}\uf017 %D{%I:%M}%f"
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%H:%M  \UF133 %m.%d.%y}"
POWERLEVEL9K_TIME_BACKGROUND='117'
POWERLEVEL9K_TIME_FOREGROUND='black'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(zsh_tfl zsh_battery_level time)
