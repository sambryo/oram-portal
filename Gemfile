source 'https://rubygems.org'

ruby '2.2.4'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'
gem 'devise-bootstrap-views'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'rename'

# javascript-capable driver for capybara
gem 'poltergeist'

# Gems for authenticating users and giving them roles
gem 'cancancan'

# haml gem
gem 'haml'

# for country select form element
gem 'country_select'
gem 'city-state'

# css
gem 'hover-rails'

# devise gems
gem 'devise',           '~> 4.2'
gem 'devise_invitable', '~> 1.7.0'

# toast notifications
gem 'toastr-rails'

# dropbox
gem 'dropbox-sdk'
gem 'carrierwave'
gem 'carrierwave-dropbox'

#app secrets
gem 'figaro'

#encryption
gem 'attr_encrypted'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'sqlite3'
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'annotate'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# debugger is useful in development mode too
group :development, :test do
  gem 'jasmine-rails' # if you plan to use JavaScript/CoffeeScript
  gem 'railroady'
end
# setup Cucumber, RSpec, autotest support
group :test do
  gem 'rspec-rails', '3.4.2'
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # basic imperative step defs
  gem 'database_cleaner' # required by Cucumber
  gem 'autotest-rails'
  gem 'factory_girl_rails' # if using FactoryGirl
  gem 'metric_fu'        # collect code metrics
  gem 'codeclimate-test-reporter', require: nil
  gem 'faker'
end

group :production do
  gem 'pg' # for Heroku deployment
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
