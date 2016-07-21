require 'spec_helper'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'pry'
require 'rack/jekyll'
require 'rack/test'


RSpec.configure do |_config|
  Capybara.javascript_driver = :poltergeist
  Capybara.app = Rack::Jekyll.new force_build: true
end
