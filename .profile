#
# Your previous .profile  (if any) is saved as .profile.mpsaved
# Setting the path for MacPorts.
stty stop undef

source ~/.dotfiles/.bash_globals
source ~/.dotfiles/.bash_completions
source ~/.dotfiles/.bash_aliases
source ~/.dotfiles/.bash_ql
source ~/.dotfiles/.bash_prompt

#rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
