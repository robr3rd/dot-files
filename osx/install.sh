#!/bin/bash
# Symlink the files to the appropriate locations in the home directory (backup existing files, if applicable)

SCRIPTPATH=$( cd "$(dirname "$0")" ; cd .. ; pwd -P )


# Move if exists, otherwise just silently fail
mv $HOME/.bashrc{,-$(date +%F-%T).robr3rd-dotfiles.bak} 2>/dev/null
mv $HOME/.bash_profile{,-$(date +%F-%T).robr3rd-dotfiles.bak} 2>/dev/null
mv $HOME/.bash_aliases{,-$(date +%F-%T).robr3rd-dotfiles.bak} 2>/dev/null
mv $HOME/.git-completion.bash{,-$(date +%F-%T).robr3rd-dotfiles.bak} 2>/dev/null
mv $HOME/.completion-wrapper.sh{,-$(date +%F-%T).robr3rd-dotfiles.bak} 2>/dev/null

mv $HOME/.tmux.conf{,-$(date +%F-%T).robr3rd-dotfiles.bak} 2>/dev/null


# Commence installation!
cp {$SCRIPTPATH/,$HOME/}.bash_profile
cp {$SCRIPTPATH/shared/,$HOME/}.git-completion.bash
cp {$SCRIPTPATH/shared/,$HOME/}.completion-wrapper.sh
# Concatenate for platform-specific differences
cat $SCRIPTPATH/{shared/,osx/}.bashrc > $HOME/.bashrc
cat $SCRIPTPATH/{shared/,osx/}.bash_aliases > $HOME/.bash_aliases

cp {$SCRIPTPATH/shared/,$HOME/}.tmux.conf

