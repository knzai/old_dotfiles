#require 'rubygems'
#require 'utility_belt'
#UtilityBelt.equip(:all)
#I suggest using my version of utility, as it will have some updates soon.  Run the following commands:
# gems --version # MAKE SURE YOU HAVE AT LEAST RUBYGEMS 1.2.0 first.
# gem sources -a http://gems.github.com
# sudo gem install timocratic-utility_belt
require 'rubygems'
require 'hirb'
Hirb.enable

#This section can be commented out if using utility_belt, since it turns this and more on, itself
require 'irb/completion'
require 'irb/ext/save-history'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

def Object.method_defined_where(method)
  self.ancestors.detect { |a| a.methods(false).include?(method.to_s) }
end

def loud_logger
  Rails.logger.instance_variable_set "@log", STDOUT
  ActiveRecord::Base.logger.level = 0
end
