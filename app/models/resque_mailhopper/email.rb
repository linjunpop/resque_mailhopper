require 'mailhopper'
require 'reqsue'

module ResqueMailhopper
  class Email < Mailhopper::Email
    @queue = :mailer

    after_create :async_send

    def self.perform(email_id)
      Email.find(email_id).send!
    end
    
    def async_send
      Resque.enqueue(self.class, self.id)
    end
  end
end
