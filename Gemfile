source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/FacundoOs/rock_paper_scissor_api.git" }

ruby "2.7.0"

gem "rails", "~> 6.0.3", ">= 6.0.3.3"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem 'rack-cors', require: 'rack/cors'
gem "bootsnap", ">= 1.4.2", require: false
gem 'devise_token_auth'


group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
  gem 'pry-rails'
  gem 'pry-byebug'
  
end

group :development do
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

