# individual cowsay command on startup
# Fancy pants one-liner
fortune | cowsay -f $(cowsay -l | tail -n +2 | tr ' ' '\n' | shuf -n 1) | lolcat --seed 0 --spread 1.0

# start starship
eval "$(starship init zsh)"

# activate syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# activate autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# define aliases

#####################
## Ubuntu-aliases: ##
#####################

# apt-aliases
alias aud='sudo apt update'
alias aug='sudo apt upgrade'
ai() {
  sudo apt install "$@"
}

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

# neovim aliases
alias lazyvim='NVIM_APPNAME=lazyvim nvim'

# laravel aliases:
alias pas='php artisan serve'

# Siteground-Server Alias
alias rcaServer='ssh u2266-nxgmmqlvonaf@ssh.rugby-club-aachen.com -p 18765'

# Java Path:
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
