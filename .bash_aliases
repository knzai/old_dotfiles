alias ls='ls -G'
alias goboo='pushd ~/Projects/yieldbuild'
alias upboo='goboo && git pull && rake db:migrate:both'
alias starboo='upboo && rake test:rails && open yieldbuild.tmproj'

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