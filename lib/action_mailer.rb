#--
# Copyright (c) 2004-2015 David Heinemeier Hansson
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#++

require 'abstract_controller'
require 'action_mailer/version'

# Common Active Support usage in Action Mailer
require 'active_support/rails'
require 'active_support/core_ext/class'
require 'active_support/core_ext/module/attr_internal'
require 'active_support/core_ext/string/inflections'
require 'active_support/lazy_load_hooks'

module ActionMailer
  extend ::ActiveSupport::Autoload

  base_path = File.join( File.expand_path(File.dirname(__FILE__)), 'action_mailer')

  eager_autoload do
    autoload :Collector, File.join(base_path, 'collector')
  end

  autoload :Base, File.join(base_path, 'base')
  autoload :DeliveryMethods, File.join(base_path, 'delivery_methods')
  autoload :MailHelper, File.join(base_path, 'mail_helper')
  autoload :Preview, File.join(base_path, 'preview')
  autoload :Previews, File.join(base_path, 'preview')
  autoload :TestCase, File.join(base_path, 'test_case')
  autoload :TestHelper, File.join(base_path, 'test_helper')
  autoload :MessageDelivery, File.join(base_path, 'message_delivery')
  autoload :DeliveryJob, File.join(base_path, 'delivery_job')
end
