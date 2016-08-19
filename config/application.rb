require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module Gambala
  class Application < Rails::Application
    config.middleware.use Rack::Deflater
  end
end
