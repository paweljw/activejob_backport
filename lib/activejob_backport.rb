# if ActiveJob is not defined, we probably need the newer ActionMailer too
if !defined?(ActiveJob)
  require 'active_job'
  require_relative './action_mailer'
end

