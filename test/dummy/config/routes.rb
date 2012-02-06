require 'resque/server'

Dummy::Application.routes.draw do
  root to: 'dummies#index'
  mount Resque::Server.new, :at => "/resque"
end
