source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
#
gem 'devise'
gem 'pundit'
gem 'geocoder'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'country_select', '~> 3.0'
gem 'gravatarify', '~> 3.1', '>= 3.1.1'
gem 'font-awesome-sass'
gem 'shrine'
gem 'aws-sdk', "~> 2.1"
gem 'roda'
gem 'jquery-fileupload-rails'
gem 'stripe'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

  group :development, :test do
    gem 'pry'
    gem 'pry-nav'
    gem 'pry-rails', '~> 0.3.2'
    gem 'rspec-rails'
    gem 'byebug', platform: :mri
    gem 'factory_girl_rails'
    gem 'faker' #some older RubySnacks reference 'ffaker'
  end 

  group :development do
    gem 'web-console'
    gem 'better_errors'
    gem 'binding_of_caller'
    gem 'listen', '~> 3.0.5'
    gem 'letter_opener'
    gem 'spring'
    gem 'spring-watcher-listen', '~> 2.0.0'
  end

  group :test do
    gem 'capybara-email'
    gem 'capybara-webkit'
    gem 'database_cleaner'
    gem 'simple_bdd'
    gem 'shoulda-matchers'
    gem 'rails-controller-testing'
    gem "shrine-memory"
    gem 'webmock', '~> 2.3', '>= 2.3.2'
    gem 'stripe-ruby-mock'
    gem 'thin'
  end 

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby '2.3.1'
