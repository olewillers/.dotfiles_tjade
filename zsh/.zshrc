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

# Ubuntu-aliases:
alias ls='ls --color=auto'
alias ll='ls -lF'
alias lla='ls -lFA'
alias la='ls -A'
alias l='ls -F'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# git aliases:
alias gst='git status'
alias gp='git push'
alias gl='git pull'
alias gal='git add .'
# alias gca= 'git commit -a'

# laravel aliases:
alias pas='php artisan serve'
