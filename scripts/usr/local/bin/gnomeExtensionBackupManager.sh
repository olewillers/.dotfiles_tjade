#!/bin/bash 

# File: /usr/local/bin/gnomeExtensionBackupManager.sh
# Author: Ole Willers
#
# This script manages backups of my extensions and their settings.
# backups are saved in: ~/.backup/gnome-shell-extensions/

# dconf load /org/gnome/shell/extensions < ~/.backup/gnome-extension-backup.txt

# Show help
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    cat <<EOF
Usage: $(basename "$0") [THEME_NAME]

Basic Explanation:
This script toggles the Ghostty theme between 'catppuccin-latte' and 'catppuccin-macchiato'.
It also updates the flavour of the catppuccin starship prompt in analogy to the ghostty theme.

Behaviour with parameters:
If no arguments are passed, the current theme will be toggled.
If one or more arguments are passed, they will be joined as a single theme name.

Examples:
  $(basename "$0") -h             # Show this help message

Config path: ~/.dotfiles_tjade/scripts/usr/local/bin/gnomeExtensionBackupManager.sh
EOF
    exit 0

# TODO: Add possibility keep last 5 backups and delete oldest.
# -> save backup-files in format: backup<backupNr 1..5, 1 is newest>_dd-mm-yy.txt
elif [[ "$1" == "backup" ]]; then
   dconf dump /org/gnome/shell/extensions/ > ~/.backup/gnome-shell-extensions/backup.txt
# Add possibility to specify a specific backup to load
elif [[ "$1" == "set" ]]; then
    dconf load /org/gnome/shell/extensions/ < ~/.backup/gnome-shell-extensions/backup.txt
else
  echo "gebm: bad Usage! use option --help for more Information!"
  exit 0
fi
