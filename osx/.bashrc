#!/bin/bash
# Customize Bash prompt
export PS1="[\u@\h \w]\$ "

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# per http://hackercodex.com/guide/python-development-environment-on-mac-osx/

# Git Autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Custom aliases
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi
