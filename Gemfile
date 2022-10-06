source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


gem 'rails', '~> 7.0.4'
gem 'puma', '~> 5.0' 

#### Database

gem 'arel-helpers'      # Ease usage when creating arel queries
gem 'sqlite3', '~> 1.4'

#### Assets

gem 'sprockets-rails'   # The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'importmap-rails'   # Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'turbo-rails'       # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'stimulus-rails'    # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]

#### Misc

gem 'jbuilder'          # Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'simple_form'
gem 'simple_form-tailwind'
gem 'slim-rails'
gem 'tailwind_views_generator'
gem 'validates_timeliness', '6.0.0.alpha1 ' # Used to validate date/time values
gem 'httparty'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  
  gem 'brakeman'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'       # For building objects associated with your models
  gem 'faker'                   # for generating sample data

  gem 'rspec-rails', '~> 4.0.1'
  gem 'rails_best_practices'    # for testing for rails best practice methods
  gem 'rubocop', require: false # github: 'rubocop-hq/rubocop'
  gem 'rubocop-performance', require: false     # github: 'rubocop-hq/rubocop-performance'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false

  gem 'pry', '~> 0.13'
  gem 'pry-byebug', '~> 3.9'
  gem 'pry-rails'               # pry console output
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  gem 'annotate'
  gem 'better_errors'           # dev: better error messages
  gem 'bullet'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem 'database_cleaner'        # n+1 database test monitoring
  gem 'cucumber-rails', require: false
  gem 'rails-controller-testing' # , github: 'rails/rails-controller-testing'
  gem 'simplecov'               # generate html report on the applications test results
  gem 'shoulda'                 # Write easy to understand and maintainable tests

  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
