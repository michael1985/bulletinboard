source 'https://rubygems.org'

gem 'rails', '3.2.7'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'authlogic'
gem 'cancan'
gem 'i18n'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

gem 'rails3-generators'

gem "bson_ext"
gem "haml"
gem "haml-rails"
gem "jquery-rails"
gem 'sunspot_rails'
gem 'will_paginate'

#gem "rcov"

# we need this here, see http://blog.davidchelimsky.net/2010/07/11/rspec-rails-2-generators-and-rake-tasks/
group :development, :test do
  gem "rspec-rails", ">= 2.0.0.beta.18"
end

# test-environment gems
group :test, :spec, :cucumber do
  gem "factory_girl_rails"
  gem "rspec",                   ">= 2.0.0.beta.18"
  gem "remarkable",              ">=4.0.0.alpha2"
  gem "remarkable_activemodel",  ">=4.0.0.alpha2"
  gem "remarkable_activerecord", ">=4.0.0.alpha2"
  gem "capybara"
  gem "cucumber"
  gem "database_cleaner"
  gem "cucumber-rails"
end