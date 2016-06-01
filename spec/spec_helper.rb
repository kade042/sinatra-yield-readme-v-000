
require_relative '../config/environment'
require 'rack/test'
#require 'capybara/poltergeist'
require 'capybara'
require 'capybara/dsl'
require_relative '../config/environment.rb'
RACK_ENV = "test"
ENV["RACK_ENV"] = "test"
#rENV["SINATRA_ENV"] = "test"

#Capybara.javascript_driver = :poltergeist

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Rack::Test::Methods
  config.order = 'default'
end

def app
  Rack::Builder.parse_file('config.ru').first
end

Capybara.app = app
