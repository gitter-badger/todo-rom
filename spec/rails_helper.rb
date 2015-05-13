# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  #
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # The name of this setting is a bit misleading. What it really means in Rails
  #   is "run every test method within a transaction." In the context of
  #   rspec-rails, it means "run every example within a transaction."
  #
  #   The idea is to start each example with a clean database, create whatever
  #   data is necessary for that example, and then remove that data by simply
  #   rolling back the transaction at the end of the example.
  #
  #   If you prefer to manage the data yourself, or using another tool like
  #   database_cleaner to do it for you, simply tell RSpec to tell Rails not
  #   to manage transactions.
  #
  config.use_transactional_fixtures = false

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.infer_spec_type_from_file_location!
end
