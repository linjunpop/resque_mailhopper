require 'test_helper'

class DummyMailerTest < Test::Unit::TestCase
  def test_dummy_mailer_should_send_welcome_email
    email = DummyMailer.welcome_email.deliver
    assert_equal(ResqueMailhopper::Email.last.from_address, "from@example.com")
    assert_queued(ResqueMailhopper::Email)
    assert_equal 1, Resque.queue(:mailer).length
  end
end
