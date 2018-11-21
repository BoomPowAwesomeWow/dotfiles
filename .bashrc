# ~/.bashrc: executed by bash(1) for non-login shells.

# Username Color
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi

# Color Aliases
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.


# Disable ctrl-s and ctrl-q
stty -ixon

# General aliases
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias sr="sudo ranger"
alias g="git"

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio

# Tex
alias Txa="cp ~/Template/LaTeX/article.tex newfile.tex"
alias Txs="cp ~/Template/LaTeX/beamer.tex newfile.tex"
alias Txl="cp ~/Template/LaTeX/letter.tex newfile.tex"
alias Txr="cp ~/Template/LaTeX/letter.tex newfile.tex"
alias bib="cp ~/Template/LaTeX/uni.bib newfile.tex"
