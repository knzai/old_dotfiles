#
# Your previous .profile  (if any) is saved as .profile.mpsaved
# Setting the path for MacPorts.
stty stop undef

export PATH=~/bin:~/bin/git_ps_tools:/usr/local/ruby/bin:/opt/local/bin:/opt/local/sbin:$PATH
export EDITOR='mate -w'
export LSCOLORS=dxfxcxdxbxegedabagacad
export RAILS_ENV=development
alias ls='ls -G'
alias goboo='pushd ~/Projects/boonity'
alias upboo='goboo && git up && rake db:migrate:both'
alias starboo='upboo && rake test:rails && open boonity.tmproj'

export PS1="\[\033[01;32m\]\u\[\033[00m\]\[\033[01;31m\]\$(git_br)\[\033[01;32m\]\[\033[00m\]:\[\033[01;36m\]\$(git_pwd)\[\033[00m\]\$ "

source /Users/tconnor/lib/git_completion.bash


#For executing a specific ruby, gem, or rake:
alias ruby186=/usr/local/ruby-1.8.6/bin/ruby
alias rake186=/usr/local/ruby-1.8.6/bin/rake
alias gem186=/usr/local/ruby-1.8.6/bin/gem

alias ruby185=/usr/local/ruby-1.8.5-p114/bin/ruby
alias rake185=/usr/local/ruby-1.8.5-p114/bin/rake
alias gem185=/usr/local/ruby-1.8.5-p114/bin/gem

#For switching the default symlink:
alias use_ruby_186='sudo ln -fhs /usr/local/ruby-1.8.6 /usr/local/ruby'
alias use_ruby_185='sudo ln -fhs /usr/local/ruby-1.8.5-p114 /usr/local/ruby'

function ql()
{
  qlmanage -p "$@" >& /dev/null
}

if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi
complete -C /Users/tconnor/lib/rake-completion.rb -o default rake

_mategem()
{
    local curw
    COMPREPLY=()
    curw=${COMP_WORDS[COMP_CWORD]}
    local gems="$(gem environment gemdir)/gems"
    COMPREPLY=($(compgen -W '$(ls $gems)' -- $curw));
    return 0
}
complete -F _mategem -o dirnames mategem