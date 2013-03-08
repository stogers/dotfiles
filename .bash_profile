#source ~/.bashrc
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:~/bin

### commonly used paths for cd
alias cdML="cd ~/Dropbox/CS189/"
alias cdData="cd ~/Dropbox/CS294_1/"

# color stuff
export TERM='xterm-256color'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

PS1='\[\e[0;35m\][\u/\W]$\[\e[0m\] ' 

### Aliases - shortcuts
alias ls="ls -G"
alias cs189-ab="ssh cs189-ab@star.cs.berkeley.edu"
alias reload='source ~/.bash_profile'
alias hist='history | grep'

# Load some essential environment paths
source ~/.virtual_envs/system/bin/activate
source ~/.rvm/scripts/rvm

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=99999
HISTFILESIZE=99999

# Must press Ctrl+D twice to exit
export IGNOREEOF=1
export EDITOR=vim

shopt -s cdspell          # autocorrects cd misspellings
shopt -s checkwinsize     # update the value of LINES and COLUMNS after each command if altered
shopt -s cmdhist          # save multi-line commands in history as single line
shopt -s dotglob          # include dotfiles in pathname expansion
shopt -s expand_aliases   # expand aliases
shopt -s extglob          # enable extended pattern-matching features
shopt -s histappend       # append to (not overwrite) the history file

#if exists, add ~/bin to PATH
if [ -d ~/bin ] ; then
    export PATH=~/bin:$PATH
fi

# Set Android SDK path

### Handy functions

#title: change the title of the current termial
# usage: title <new title>
title() {
    echo -en "\033]2;$1\007"
}

