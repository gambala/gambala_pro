# frozen_string_literal: true

require_relative 'boot'
require 'rails/all'
require './lib/form_builders/bootstrap_form_builder'
Bundler.require(*Rails.groups)

module Gambala
  class Application < Rails::Application
    config.action_view.default_form_builder = 'BootstrapFormBuilder'
    config.encoding = 'utf-8'
    config.i18n.available_locales = %i(ru en)
    config.i18n.default_locale = :ru
    config.load_defaults 5.1
    config.middleware.use Rack::Deflater
    config.time_zone = 'Moscow'
  end
end
