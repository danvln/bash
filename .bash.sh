#!/bin/bash
set -e

# wget https://raw.githubusercontent.com/danvln/bash/.bash.sh -O - >> ~/.zshrc
# wget https://raw.githubusercontent.com/danvln/bash/.bash.sh -O - >> ~/.bashrc

#########################################################################################################################################################
### COLORS
#########################################################################################################################################################

# tput = command accepts the terminal commands and output the control code sequences for that terminal.
# setaf = Set A Foreground color using ANSI escape
# setab = Set a background color using ANSI escape

#
# Theming
#

#normal=$(tput sgr0)                      # normal text
normal=$'\e[0m'                           # (works better sometimes)
bold=$(tput bold)                         # make colors bold/bright
black="$(tput setaf 0)"                   # black text
red="$bold$(tput setaf 1)"                # bright red text
green=$(tput setaf 2)                     # dim green text
fawn=$(tput setaf 3); beige="$fawn"       # dark yellow text
yellow="$bold$fawn"                       # bright yellow text
darkblue=$(tput setaf 4)                  # dim blue text
blue="$bold$darkblue"                     # bright blue text
purple=$(tput setaf 5); magenta="$purple" # magenta text
pink="$bold$purple"                       # bright magenta text
darkcyan=$(tput setaf 6)                  # dim cyan text
cyan="$bold$darkcyan"                     # bright cyan text
gray=$(tput setaf 7)                      # dim white text
darkgray="$bold"$(tput setaf 0)           # bold black = dark gray text
white="$bold$gray"                        # bright white text

#normal=$(tput sgr0)                      # normal text
normal=$'\e[0m'                           # (works better sometimes)
bblack="$(tput setab 0)"                   # black text
bbold=$(tput bold)                         # make colors bold/bright
bred="$bold$(tput setab 1)"                # bright red text
bgreen=$(tput setab 2)                     # dim green text
bfawn=$(tput setab 3); beige="$fawn"       # dark yellow text
byellow="$bold$fawn"                       # bright yellow text
bdarkblue=$(tput setab 4)                  # dim blue text
bblue="$bold$darkblue"                     # bright blue text
bpurple=$(tput setab 5); magenta="$purple" # magenta text
bpink="$bold$purple"                       # bright magenta text
bdarkcyan=$(tput setab 6)                  # dim cyan text
bcyan="$bold$darkcyan"                     # bright cyan text
bgray=$(tput setab 7)                      # dim white text
bdarkgray="$bold"$(tput setab 0)           # bold black = dark gray text
bwhite="$bold$gray"                        # bright white text



#########################################################################################################################################################
### ECHO
#########################################################################################################################################################

function line {
    local sep="."
    if [[ ! -z $1 ]]; then
      sep=$1
    fi
    local cols=$(stty size | awk '{print $2}')
    i=$cols
    lline=""
    while [[ $i > 1 ]] ; do
      lline+=$sep
      ((i--))
    done
    printf -- $green"%s%s%s\n"  "$lline"
    printf -- $normal
}

function header {
  echo -e "\n$black$bgreen$1\x1b[K\x1b[0m\n"
}

function log {
  echo -e "$black$bgray$1\x1b[K\x1b[0m"
}

alias header='header $1'
alias line='line $1'
alias log='log $1'

#########################################################################################################################################################
### UTILS
#########################################################################################################################################################


alias b=bash
alias cls=clear

# termila level = tl >> # shells I am in
alias tl="echo $SHLVL"

# nice view of the machine
alias htop=htop

#########################################################################################################################################################
### ???
#########################################################################################################################################################



set +e
