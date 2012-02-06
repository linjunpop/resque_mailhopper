require 'mailhopper'
require 'resque'

module ResqueMailhopper
  class Email < Mailhopper::Email
    @queue = :mailer

    after_create :async_send

    def self.perform(email_id)
      Mailhopper::Email.find(email_id).send!
    end
    
    private

    def async_send
      Resque.enqueue(self.class, self.id)
    end
  end
end
