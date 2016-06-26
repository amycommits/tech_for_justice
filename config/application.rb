require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Tfj
  class Application < Rails::Application
     config.active_record.raise_in_transactional_callbacks = true
     #config.fixture_replacement do |g|
     #   g.fixture_replacement :factory_girl, dir: "spec/factories"
     #end
  end
end
