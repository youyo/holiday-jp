#
source "https://rubygems.org"
ruby '2.2.3'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'grape'
gem 'haml'
gem 'unicorn'
gem 'dotenv'
gem 'sinatra-activerecord'
gem 'holiday_japan'

group :development do
  gem 'sqlite3'
  gem 'rack-lineprof'
end

group :production do
  gem 'mysql2', '~> 0.3.20'
  gem 'fluent-logger'
  gem 'rack-common_logger-fluent'
end
