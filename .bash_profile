# function to add git branch to terminal command line
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# set PS1 in format username@hostname path gitBranch
export PS1="\[\033[38;5;13m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;172m\]\h\[$(tput sgr0)\] \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# enable colours
export CLICOLOR=1

export LSCOLORS=ExFxCxDxBxegedabagacad
