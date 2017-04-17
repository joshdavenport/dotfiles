for file in ~/.{aliases,extra,bash_prompt}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
export HISTTIMEFORMAT='%F %T '

# stupid, love it anyway
if [ -x /usr/local/bin/figlet -a -x /usr/local/bin/lolcat -a -x /usr/local/bin/fortune ]; then
    echo ''
    date +"%a %e %h" | figlet -f larry3d | lolcat
    fortune -s
    echo ''
fi
