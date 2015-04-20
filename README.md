# Active Job

Active Job backported to Rails 4.0 and 4.1. This fork also adds support for using the deliver_later feature of ActionMailer.

```ruby
gem 'activejob_backport'
```

And create `config/initializers/active_job.rb` with:

```ruby
ActiveJob::Base.queue_adapter = :inline # default queue adapter
# Adapters currently supported: :backburner, :delayed_job, :qu, :que, :queue_classic,
#                               :resque, :sidekiq, :sneakers, :sucker_punch
```

See [how to use Active Job](http://edgeguides.rubyonrails.org/active_job_basics.html) and the [official repo](https://github.com/rails/rails/tree/master/activejob)

[![Build Status](https://travis-ci.org/ankane/activejob_backport.png?branch=master)](https://travis-ci.org/ankane/activejob_backport)
