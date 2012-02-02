require 'test_helper'

class DummyMailerTest < Test::Unit::TestCase
  def test_dummy_mailer_should_send_welcome_email
    email = DummyMailer.welcome_email.deliver
    assert_equal(Mailhopper::Email.last.from_address, "from@example.com")
    assert_queued(Mailhopper::Email)
  end
end
