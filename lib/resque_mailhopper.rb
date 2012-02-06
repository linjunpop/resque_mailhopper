require File.expand_path('../../app/models/resque_mailhopper/email', __FILE__)

module ResqueMailhopper
end

::Mailhopper.setup do |config|
  config.email_class = ResqueMailhopper::Email
end
