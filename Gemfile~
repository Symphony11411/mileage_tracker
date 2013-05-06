source 'http://rubygems.org'

gem 'rails', '3.0.10'
# 'sqlite3-ruby' is now just 'sqlite3'
gem 'sqlite3', :require => 'sqlite3'

group :development do
  gem 'annotate'
  gem 'web-app-theme'
  gem 'heroku'
end

group :development, :test do
  gem 'ruby-debug19'
  gem 'rspec-rails'
    gem 'shoulda'

#  gem 'cucumber-rails'
    gem 'capybara'
    gem 'database_cleaner'
    gem 'pickle'
    gem 'pickler'
end

# cucumber-rails should only be in test env. (warning)
group :test do
  gem 'cucumber-rails'
end
