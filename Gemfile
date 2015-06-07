source 'https://rubygems.org'
ruby "2.2.2"
#ruby-gemset=railstutorial_rails_4_2

gem 'rails', '4.2.1'
gem "bootstrap-sass"
gem "sprockets"
gem "bcrypt"

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

group :production do
  gem "pg"
  gem "rails_12factor"
end

group :development, :test do
  gem 'sqlite3'
  gem "rspec-rails"
  gem "guard"
  gem "guard-rspec"
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :test do
  gem "selenium-webdriver"
  gem "capybara"
  gem "rb-fsevent", require: false
  gem "terminal-notifier-guard"
  gem "factory_girl_rails"
end

group :doc do
  gem 'sdoc', '~> 0.4.0', group: :doc
end

gem "pry"
