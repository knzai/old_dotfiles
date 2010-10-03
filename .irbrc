require 'irb/completion'
require 'irb/ext/save-history'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

def Object.method_defined_where(method)
  self.ancestors.detect { |a| a.methods(false).include?(method.to_s) }
end

def loud_logger
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Rails.logger.instance_variable_set "@log", STDOUT
  ActiveRecord::Base.logger.level = 0
  Rails.logger.level = 0
end
