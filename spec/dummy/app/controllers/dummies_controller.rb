class DummiesController < ApplicationController
  def index
    DummyMailer.welcome_email.deliver
  end
end
