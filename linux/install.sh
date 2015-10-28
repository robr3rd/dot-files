#!/bin/bash
# Symlink the files to the appropriate locations in the home directory (backup existing files, if applicable)

SCRIPTPATH=$( cd "$(dirname "$0")" ; pwd -P )

# Move if exists, otherwise just silently fail
mv $HOME/.bashrc $HOME/.bashrc.orig 2>/dev/null
mv $HOME/.bash_aliases $HOME/.bash_aliases.orig 2>/dev/null
mv $HOME/.git-completion.bash $HOME/.git-completion.bash.orig 2>/dev/null
mv $HOME/.completion-wrapper.sh $HOME/.completion-wrapper.sh.orig 2>/dev/null

# Commence installation!
cp {$SCRIPTPATH/..shared/,$HOME/}.bashrc
cp {$SCRIPTPATH/../shared/,$HOME/}.git-completion.bash
cp {$SCRIPTPATH/../shared/,$HOME/}.completion-wrapper.sh
# Concatenate for platform-specific differences
cat {$SCRIPTPATH/../shared/,$SCRIPTPATH/}.bash_aliases > $HOME/.bash_aliases
