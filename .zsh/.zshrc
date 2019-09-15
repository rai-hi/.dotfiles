ZDOTDIR=$HOME/Dropbox/Config/zsh
export RUBYDB_LIB=~/.rubydbg
export RUBYDB_OPTS="HOST=localhost PORT=9000"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Prezto
prompt cloud '>' blue red

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PS1="%B%F{$primary_color}${prefix}%f%b  %B%F{$secondary_color}%c%f%b ${git_info:+${(e)git_info[prompt]}}"

# source ~/.env

# eval $(thefuck --alias)
eval export PATH="/Users/rainer/.rbenv/shims:${PATH}"
export RBENV_SHELL=zsh
eval "$(rbenv init -)"
#source '~/.rbenv/completions/rbenv.zsh'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias gmbk='cd ~/Dropbox/dev/gymbook/dev'
alias config='/usr/bin/git --git-dir=/Users/rainer/.dotfiles/ --work-tree=/Users/rainer'

