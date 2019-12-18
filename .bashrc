# If not running interactively, don't do anything
[ -z "$PS1" ] && return

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;35m\]$(parse_git_branch)\[\033[00m\]\$ '

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /usr/share/git/completion/git-completion.bash ]; then
    . /usr/share/git/completion/git-completion.bash
fi

# add ~/bin to the search path
export PATH=$PATH:~/bin:./node_modules/.bin

[ -f '/usr/share/chruby/chruby.sh' ] && . '/usr/share/chruby/chruby.sh'
[ -f '/usr/share/chruby/auto.sh' ] && . '/usr/share/chruby/auto.sh'
[ -f '/usr/share/nvm/init-nvm.sh' ] && . '/usr/share/nvm/init-nvm.sh'

if [ -f "/usr/share/z/z.sh" ]; then
    . /usr/share/z/z.sh

    unalias z 2> /dev/null

    z() {
      [ $# -gt 0 ] && _z "$*" && return
      cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
    }
fi

HISTSIZE=1000000

export EDITOR="vim"
