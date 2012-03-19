require 'spec_helper'
require 'resque_spec'

describe "ResqueMailhopper::Email" do
  subject { email }

  describe "#async_send" do
    before do
      ResqueSpec.reset!
    end

    let(:email) { ResqueMailhopper::Email.new(:from_address => 'from@example.com') }

    it "should add email to resque" do
      subject.save!
      ResqueMailhopper::Email.should have_queued(subject.id)
    end
  end
end
