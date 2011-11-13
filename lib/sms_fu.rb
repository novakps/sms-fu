begin
  require 'action_mailer'
catch Exception => e
  puts "sms_fu: WARN: action_mailer could not be loaded, unable to send messages using ActionMailer"
end
begin
  require 'pony'
catch Exception => e
  puts "sms_fu: WARN: pony could not be loaded, unable to send messages using pony"
end
require 'yaml'

require 'sms_fu/sms_fu'
require 'sms_fu/sms_fu_helper'
require 'sms_fu/sms_notifier'

require 'sms_fu/rails'
