# if ActiveJob is not defined, we probably need the newer ActionMailer too
if !defined?(ActiveJob)
  require 'active_job'
end

require_relative './action_mailer'
