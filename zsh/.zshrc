# individual cowsay command on startup
# fortune | cowsay -f $(cowsay -l | tail -n +2 | tr ' ' '\n' | shuf -n 1) | lolcat --seed 0

# -----------------------------------------------------
# Fastfetch on startup
# -----------------------------------------------------
if [[ $(tty) == *"pts"* ]]; then
    fastfetch --config examples/13
else
    echo
    if [ -f /bin/hyprctl ]; then
        echo "Start Hyprland with command Hyprland"
    fi
fi


# ----------------------------------------------------
# start starship
# ----------------------------------------------------
eval "$(starship init zsh)"

# ----------------------------------------------------
# activate syntax highlighting
# ----------------------------------------------------
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ----------------------------------------------------
# activate autosuggestions
# ----------------------------------------------------
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ----------------------------------------------------
# set keybindings because of zsh not recognizing for example: 'Ctrl + <-', 'Ctrl + ->', 'Entf'
# not working by default in: ghostty, alacritty, kitty, fedora standard terminal)
# ----------------------------------------------------

# keybind for Ctrl + ->
bindkey '^[[1;5C' forward-word

# keybind for Ctrl + <-
bindkey '^[[1;5D' backward-word

# keybind for Ctrl + Entf
bindkey '^[[3~' delete-char

# keybind for Ctrl + delete
bindkey '^[[3;5~' kill-word

# keybind for Ctrl + delete
bindkey '^H' backward-kill-word

#############
## ALIASES ##
#############

# apt-aliases
# alias ai='sudo apt install'
# alias aud='sudo apt update'
# alias aug='sudo apt upgrade'

# dnf-aliases
alias di='sudo dnf install'
alias dr='sudo dnf remove'
alias du='sudo dnf upgrade'
alias dur='sudo dnf upgrade --refresh'
alias ds='dnf search'
alias dl='dnf list'
alias dca='dnf clean all'
alias dhl='dnf history list'

# ll-aliases
alias ls='ls --color=auto'
alias ll='ls -lF'
alias lla='ls -lFA'
alias la='ls -A'
alias l='ls -F'

# dir-aliases
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# grep-aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# git aliases:
alias gst='git status'
alias gp='git push'
alias gl='git pull'
alias gf='git fetch'
alias gal='git add .'
gca() {
  if [[ -z "$1" ]]; then 
    echo "Du hast die Commit-Message vergessen du dully :)"
    return 1
  else
    git commit -a -m "$1"
  fi
}

# emacs aliases
alias emacs='emacs -nw'

# laravel aliases:
alias pas='php artisan serve'

# Siteground-Server Alias
alias rcaServer='ssh u2266-nxgmmqlvonaf@ssh.rugby-club-aachen.com -p 18765'

# aliase für custom bash-skripte
alias sgt='switchGhosttyTheme.sh'
alias gebm='gnomeExtensionBackupManager.sh'

# Set environment Variables
export EDITOR='/usr/sbin/nvim'
export VISUAL='/usr/sbin/nvim'


# Java Path:
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
