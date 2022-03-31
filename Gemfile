source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

#######
### default
#######

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# https://github.com/rails/rails
gem 'rails', '~> 6.0.0'

# Use Puma as the app server
# https://github.com/puma/puma
gem 'puma', '~> 4.3'

# Use PostgreSQL as the database for Active Record
# https://github.com/ged/ruby-pg
gem 'pg'

# Build JSON APIs with ease.
# https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

# Reduces boot times through caching; required in config/boot.rb
# https://github.com/Shopify/bootsnap
gem 'bootsnap', '>= 1.4.2', require: false

######
### application
######

# Rack middleware for blocking & throttling abusive requests
# https://github.com/kickstarter/rack-attack
gem 'rack-attack'

# Rack Middleware for handling Cross-Origin Resource Sharing (CORS), which makes cross-origin AJAX possible.
# https://github.com/cyu/rack-cors
gem 'rack-cors'

# Rack::UTF8Sanitizer is a Rack middleware which cleans up invalid UTF8 characters in request URI and headers.
# https://github.com/whitequark/rack-utf8_sanitizer
gem 'rack-utf8_sanitizer'

######
### frontend
######

# Webpacker makes it easy to use the JavaScript pre-processor and bundler
# https://github.com/rails/webpacker
gem 'webpacker'

# Use SCSS for stylesheets
# https://github.com/rails/sass-rails
gem 'sass-rails', '~> 5'

######
### development
######

group :development do
  # Manage Procfile-based applications
  # https://github.com/ddollar/foreman
  gem 'foreman'

  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  # https://github.com/rails/web-console
  gem 'web-console', '>= 3.3.0'

  # https://github.com/guard/listen
  gem 'listen', '>= 3.0.5', '< 3.2'

  # Spring speeds up development by keeping your application running in the background.
  # https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # A runtime developer console and IRB alternative with powerful introspection capabilities
  # https://github.com/rweng/pry-rails
  gem 'pry-rails'
end

######
### test
######

group :test do
  # Adds support for Capybara system testing and selenium driver
  # https://github.com/teamcapybara/capybara
  gem 'capybara', '>= 2.15'

  # This gem provides Ruby bindings for WebDriver and has been tested to work on MRI (2.0 through 2.2)
  # https://github.com/SeleniumHQ/selenium/tree/master/rb
  gem 'selenium-webdriver'

  # Easy installation and use of web drivers to run system tests with browsers
  # https://github.com/titusfortner/webdrivers
  gem 'webdrivers'

  # A library for setting up Ruby objects as test data
  # https://github.com/thoughtbot/factory_bot_rails
  gem 'factory_bot_rails'

  # Brings the RSpec testing framework to Ruby on Rails as a drop-in alternative to its default testing framework, Minitest
  # https://github.com/rspec/rspec-rails
  gem 'rspec-rails'

  # Test existence of your Rails callbacks without having to call them
  # https://github.com/jdliss/shoulda-callback-matchers
  gem 'shoulda-callback-matchers'

  # Simple one-liner tests for common Rails functionality
  # https://github.com/thoughtbot/shoulda-matchers
  gem 'shoulda-matchers'
end

######
### development && test
######

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # https://github.com/deivid-rodriguez/byebug
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # A Ruby static code analyzer and formatter, based on the community Ruby style guide
  # https://github.com/rubocop-hq/rubocop
  gem 'rubocop', '~> 0.67.2'
end
