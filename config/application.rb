require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TodoRom
  class Application < Rails::Application
    # Adding the dependency of application. It's necessary to application the
    #   gem 'rom-rails'
    #
    require 'rom-rails'
  end
end
