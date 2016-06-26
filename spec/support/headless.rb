require 'headless'

RSpec.configure do |config|
  Capybara.javascript_driver = :poltergeist

  config.before(:suite) do
    @headless = Headless.new(display: 100, destroy_at_exit: false)
    @headless.start
  end

  config.after(:suite) do
    @headless.destroy
  end
end
