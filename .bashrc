# ~/.bashrc: executed by bash(1) for non-login shells.  

# Username Color
DEFAULT=$PS1
PS1="\[\033[01;32m\]Desktop@:\[\033[01;34m\]\W\[\033[0;00m\]\$ "

# Default Editor
export EDITOR=vim

# General Variables
BIB="~/Templates/ref.bib"

#Color Aliases
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

# Geral Application
alias rain="cmatrix -bs"

alias wtr="curl wttr.in"
alias srturl="curl -s http://tinyurl.com/api-create.php?"
alias dict="curl 'dict://dict.org/d:operating system'"

alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio