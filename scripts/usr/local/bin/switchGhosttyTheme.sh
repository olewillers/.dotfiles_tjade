#!/bin/bash

# This script toggles the ghostty theme between 'catppuccin-latte' and 'catppuccin-macchiato'
# You have the option to pass multiple arguments to the script which will be formatted
# to a concatenated string and written into the ghostty config file
# the default Theme if no arguments are given is 'catppuccin-macchiato'

# Show help
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    cat <<EOF
Usage: $(basename "$0") [THEME_NAME]

This script toggles the Ghostty theme between 'catppuccin-latte' and 'catppuccin-macchiato'.

If no arguments are passed, the current theme will be toggled.
If one or more arguments are passed, they will be joined as a single theme name.

Examples:
  $(basename "$0")                # Toggle between catppuccin-latte and catppuccin-macchiato
  $(basename "$0") Tokyo Night    # Set theme to "Tokyo Night"
  $(basename "$0") -h             # Show this help message

Config path: $path
EOF
    exit 0
fi

path="$HOME/.dotfiles_tjade/ghostty/.config/ghostty/config"
theme=$(sed -n 's/^theme="\([^"]*\)"/\1/p' "$path")
updateTheme=""

if [[ $# -eq 0 ]]; then
    case "$theme" in
	"catppuccin-latte")
	    updateTheme="catppuccin-macchiato"
	    ;;
	"catppuccin-macchiato")
	    updateTheme="catppuccin-latte"
	    ;;
	*)
	    updateTheme="catppuccin-macchiato"
	    ;;
    esac
else
    updateTheme="$*"
fi

sed -i "s/^theme=\"${theme}\"/theme=\"${updateTheme}\"/" "$path"

echo "Updated Theme: ${theme} → ${updateTheme}"
