class DummyMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def welcome_email
    mail(to: "dummy@example.com", subject: "Welcome to My Awesome Site")
  end
end
