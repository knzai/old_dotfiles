#
# Your previous .profile  (if any) is saved as .profile.mpsaved
# Setting the path for MacPorts.
stty stop undef

source ~/.dotfiles/bash_globals.sh
source ~/.dotfiles/bash_completions.sh
source ~/.dotfiles/bash_aliases.sh
source ~/.dotfiles/bash_ql.sh
source ~/.dotfiles/bash_prompt.sh

alias mongo_start="mongod run --config /usr/local/Cellar/mongodb/1.6.3-x86_64/mongod.conf"

#rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
