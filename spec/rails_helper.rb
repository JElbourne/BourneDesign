ENV['RAILS_ENV'] ||= 'test'
  require File.expand_path('../../config/environment', __FILE__)
  # Prevent database truncation if the environment is production
  abort("The Rails environment is running in production mode!") if Rails.env.production?
  require 'spec_helper'
  require 'rspec/rails'
  require 'capybara/rspec'
  require 'simple_bdd'
  require 'shoulda/matchers'
  require 'pundit/rspec'
  require "shrine/storage/memory"
  Capybara.javascript_driver = :webkit

ActiveRecord::Migration.maintain_test_schema!

include ActionDispatch::TestProcess
Shrine.storages = {
  cache: Shrine::Storage::Memory.new,
  store: Shrine::Storage::Memory.new,
}

include Rails.application.routes.url_helpers
RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = false

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean_with(:truncation)
  end 

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    Capybara.reset_sessions!
    DatabaseCleaner.clean
  end

  config.include SimpleBdd, type: :feature

  config.include Warden::Test::Helpers
  config.before :suite do
    Warden.test_mode!
  end

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!   

  config.include ApplicationHelper

end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
end

Capybara::Webkit.configure do |config|
  config.block_unknown_urls
end
