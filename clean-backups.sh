#!/bin/bash
echo "This script creates a backup of the previous version of each config file it touches, appending the timestamp to the end in the event that something needs to be recovered."
echo -n "Would you like to have all backups purged? [y/N] "
read -n 1 purge_backups

if [ "$purge_backups" == "y" ]; then
	rm ~/.*.robr3rd-dotfiles.bak
fi
