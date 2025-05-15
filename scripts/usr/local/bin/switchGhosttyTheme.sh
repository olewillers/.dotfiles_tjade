#!/bin/bash

# This script toggles the ghostty theme and the starship color-palette 
# between 'catppuccin-latte' and 'catppuccin-macchiato'
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

Config path: ~/.dotfiles_tjade/scripts/usr/local/bin/switchGhosttyTheme.sh
EOF
    exit 0
fi

ghosttyConfigPath="$HOME/.dotfiles_tjade/ghostty/.config/ghostty/config"
starshipConfigPath="$HOME/.dotfiles_tjade/starship/.config/starship.toml"
theme=$(sed -n 's/^theme="\([^"]*\)"/\1/p' "$ghosttyConfigPath")
updateGhosttyTheme=""
updateStarshipTheme=""

if [[ $# -eq 0 ]]; then
    case "$theme" in
	"catppuccin-latte")
	    updateGhosttyTheme="catppuccin-macchiato"
      updateStarshipTheme="catppuccin_macchiato"
	    ;;
	"catppuccin-macchiato")
	    updateGhosttyTheme="catppuccin-latte"
      updateStarshipTheme="catppuccin_latte"
	    ;;
	*)
	    updateGhosttyTheme="catppuccin-macchiato"
      updateStarshipTheme="catppuccin_latte"
	    ;;
    esac
else
    updateGhosttyTheme="$*"
fi

sed -i "s/^theme=\"${theme}\"/theme=\"${updateGhosttyTheme}\"/" "$ghosttyConfigPath"
sed -i "s/palette = \"catppuccin_.*/palette = \"${updateStarshipTheme}\"/" "$starshipConfigPath"

echo "Updated Ghostty Theme: ${theme} → ${updateGhosttyTheme}"
echo "Updated starship color-palette: ${theme} → ${updateGhosttyTheme}"
