#
#
#
#
#

# Username Color
DEFAULT=$PS1
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"
BLUE="\[$(tput setaf 81)\]"
PS1="${BOLD}${BLUE}\W ${RESET}${BOLD}$:${RESET} "

# Default Editor
export EDITOR=nvim

# ARCHIVE EXTRACTION
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

### ALIASES ###

alias bye='shutdown now'

#  NVIM
alias vim=nvim
alias v=nvim

# Devour Alias
alias zathura="devour zathura"
alias feh="devour feh"
alias mpv="devour mpv"

# Color Aliases
alias ls='ls --color=auto --group-directories-first'
alias grep="grep --color=auto" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.
alias rain="cmatrix -b -C Blue"
alias py="python3"
alias wtr="curl wttr.in/coimbra?0"

# Youtube Download
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio



