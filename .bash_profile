source ~/.profile
for file in ~/.{aliases,extra,bash_prompt}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
export HISTTIMEFORMAT='%F %T '
