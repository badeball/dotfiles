# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# Shorthands
alias ll='ls -lh'

function lll {
    ls -lh --color=always  "${@}" | less -RF
}

# Added options
alias feh='feh --scale-down --no-screen-clip'
alias grep='grep --exclude-dir={.git,node_modules}'

# SSHs
alias json='ssh media.coreticket.no'
alias lynx='ssh jonasbal@lynx.stud.ntnu.no'
alias vilje='ssh jonasbal@vilje.hpc.ntnu.no'
alias itera='ssh itera.coreticket.no'
alias nurse='ssh jamundsen@193.19.64.100'

# Ruby development
alias b='bundle'
alias be='bundle exec'
alias r='time bundle exec rspec -b'

# Docker development
alias d='docker'
alias dc='docker-compose '
alias dm='docker-machine '

# Various stuff
alias tf='terraform'
alias hideme='unset HISTFILE'

# Scary!
alias skype='echo "You can not do this as a regular user"'
alias steam='echo "You can not do this as a regular user"'
