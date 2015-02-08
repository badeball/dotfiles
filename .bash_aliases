# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

alias ll='ls -lh'

alias sed='sed -r'

function lll {
    ls -lh --color=always  "${@}" | less -RFX
}

# SSHs
alias json='ssh media.coreticket.no'
alias lynx='ssh jonasbal@lynx.stud.ntnu.no'
alias vilje='ssh jonasbal@vilje.hpc.ntnu.no'
alias itera='ssh itera.coreticket.no'
alias nurse='ssh jamundsen@193.19.64.100'

# Ruby development
alias b='bundle install'
alias be='bundle exec'
alias r='time bundle exec rspec -b'
