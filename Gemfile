# Gemfile
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

# Production gems
gem 'rails', '~> 7.0.0'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'pry-byebug'
end

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'reek', require: false
end

group :test do
  gem 'simplecov', require: false
end