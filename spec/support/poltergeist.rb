require 'capybara/poltergeist'

RSpec.configure do |config|
  Capybara.javascript_driver = :poltergeist
end