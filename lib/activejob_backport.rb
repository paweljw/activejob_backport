# if ActiveJob is not defined, we probably need the newer ActionMailer too
if !defined?(ActiveJob)
  require 'active_job'
end

puts "requiring " + File.join( File.expand_path(File.dirname(__FILE__)), 'action_mailer')
require File.join( File.expand_path(File.dirname(__FILE__)), 'action_mailer')

