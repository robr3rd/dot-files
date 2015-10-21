#!/bin/bash
# Try to put things back to how they were

# Clean up
rm {.git-completion.bash,.bash{_aliases,_profile,rc}} 2>/dev/null

# Restore
# (Just assume that they saved the originals, and if not that's fine -- fail silently)
mv .git-completion.bash{.orig,} 2>/dev/null
mv .bash_aliases{.orig,} 2>/dev/null
mv .bash_profile{.orig,} 2>/dev/null
mv .bashrc{.orig,} 2>/dev/null
