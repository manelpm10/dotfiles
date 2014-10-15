# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles
# use ~/.extra to define your own commands you don't want to commit
if [ "$SSH_TTY" ]
then
    for file in ~/.{bash_prompt,aliases,extra}; do
	    [ -r "$file" ] && [ -f "$file" ] && source "$file";
    done;
    unset file;
fi

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagaced

# Remove duplicated from bash history
HISTCONTROL=ignoreboth:erasedups

