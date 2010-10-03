if [ -f ~/lib/git_completion.bash ]; then
  source ~/lib/git_completion.bash
fi
if [ -f /opt/local/etc/bash_completion ]; then
  source  /opt/local/etc/bash_completion
fi
complete -C ~/lib/rake-completion.rb -o default rake