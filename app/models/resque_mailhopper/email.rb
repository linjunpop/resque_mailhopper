require 'mailhopper'
require 'reqsue'

module ResqueMailhopper
  class Email < Mailhopper::Email
    @queue = :mailer

    after_create :enqueue

    def self.perform(email_id)
      Email.find(email_id).send!
    end
    
    def enqueue
      Resque.enqueue(Email, self.id)
    end
  end
end
