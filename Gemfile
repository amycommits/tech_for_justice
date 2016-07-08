source 'https://rubygems.org'

ruby '2.3.0'

gem 'bootstrap-sass', '~> 3.3.6'
gem 'coffee-rails', '~> 4.1.0'
gem 'devise'
gem 'hologram'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'pg', '~> 0.18'
gem 'prawn-rails'
gem 'rails', '4.2.6'
gem 'sass-rails', '~> 5.0'
gem 'tooltipster-rails'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'
gem 'unicorn-rails', platforms: :ruby

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'rspec-rails','~> 3.0'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0'
end

group :test do
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem 'headless'
  gem 'poltergeist'
  gem 'shoulda-matchers', require: false
end

group :development do
  gem 'annotate'
  # for automation
  gem 'guard'
  # specifically, styleguide automation
  gem 'guard-hologram'
  gem 'pry-awesome_print'
  gem 'pry-highlight'
  gem 'pry-rails'
  gem 'rails-erd'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :production do
  gem 'rails_12factor'
end
