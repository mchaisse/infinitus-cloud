source 'https://rubygems.org'

# Specify ruby version for Heroku deployment
ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', github: 'rails/rails', branch: '4-2-stable'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.0'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Provides a full set of stores (Cache, Session, HTTP Cache)
gem 'redis-rails' # not tagged in https://github.com/redis-store/redis-rails
gem 'redis-rack-cache' # fix rack-cache initialization

# Job background processing
gem 'sidekiq', '~> 4.0.1'
# Monitoring interface
gem 'sinatra', require: nil

# NewRelic monitoring
gem 'newrelic_rpm'

# bundle exec rake doc:rails generates the API under doc/api.
# gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Manage Procfile-based applications
gem 'foreman'

group :development, :test do
  # light and fast web server
  gem 'thin', '~> 1.6'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # testing framework
  gem 'rspec-rails', '~> 3.0'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # track query N+1
  gem 'bullet'

  # Replaces the standard Rails error page with a much better and more useful error page
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :staging do
  # Better print in console
  gem 'awesome_print'
end

group :production, :staging do
  # Use Puma as the app server
  gem 'puma', '~> 2.14'

  # Serving assets and logger output for Heroku
  gem 'rails_12factor'
end
