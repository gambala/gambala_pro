require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module Gambala
  class Application < Rails::Application
    config.autoload_paths += %W(
      #{config.root}/lib/form_builders
    )
    config.action_view.default_form_builder = 'BootstrapFormBuilder'
    config.encoding = 'utf-8'
    config.i18n.available_locales = [:ru, :en]
    config.i18n.default_locale = :ru
    config.middleware.use Rack::Deflater
  end
end
