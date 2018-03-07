source 'https://rubygems.org'
source 'http://gems.dev.mas.local'

ruby '2.4.1'

gem 'rails', '~> 5.0.6'

gem 'dough-ruby', '~> 5.27'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'mas-cms-client', '1.10.0'
gem 'newrelic_rpm'
gem 'pg', '~> 0.18'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'brakeman', require: false
  gem 'capybara'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rubocop', '~> 0.49.1', require: false
  gem 'site_prism'
  gem 'sqlite3'
  gem 'tzinfo-data'
  gem 'vcr'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :build, :test, :development do
  gem 'bowndler', '~> 1.0'
end
