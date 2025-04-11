#!/bin/bash

# This script changes the ghostty theme and reloads ghostty
path="/home/tjade/.dotfiles_tjade/ghostty/.config/ghostty/config"
theme=$(sed -n 's/^theme="\([^"]*\)"/\1/p' "$path")
updateTheme=""

#if [[ -z $1 ]]; then
    case "$theme" in
	"Alabaster")
	    updateTheme="GruvBoxDarkHard"
	    ;;
	"GruvBoxDarkHard")
	    updateTheme="Alabaster"
	    ;;
	*)
	    updateTheme="GruvBoxDarkHard"
	    ;;
    esac

sed -i "s/^theme=\"${theme}\"/theme=\"${updateTheme}\"/" "$path"
