# frozen_string_literal: true

Rails.application.configure do
  config.action_controller.perform_caching = true
  config.action_mailer.default_url_options = { host: 'www.gambala.pro' }
  config.action_mailer.perform_caching = false
  config.active_record.dump_schema_after_migration = false
  config.active_storage.service = :local
  config.active_support.deprecation = :notify
  config.assets.compile = false
  config.cache_classes = true
  config.consider_all_requests_local = false
  config.eager_load = true
  config.i18n.fallbacks = true
  config.log_formatter = ::Logger::Formatter.new
  config.log_level = :debug
  config.log_tags = [:request_id]
  config.middleware.use Rack::Attack
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  if ENV['RAILS_LOG_TO_STDOUT'].present?
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
  end

  # config.action_cable.allowed_request_origins = [ 'http://example.com', /http:\/\/example.*/ ]
  # config.action_cable.mount_path = nil
  # config.action_cable.url = 'wss://example.com/cable'
  # config.action_controller.asset_host = 'http://assets.example.com'
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # for Apache
  # config.action_mailer.raise_delivery_errors = false
  # config.active_job.queue_adapter = :resque
  # config.active_job.queue_name_prefix = "gambala_#{Rails.env}"
  # config.assets.css_compressor = :sass
  # config.cache_store = :mem_cache_store
  # config.force_ssl = true
  # config.logger = ActiveSupport::TaggedLogging.new(Syslog::Logger.new 'app-name')
  # config.require_master_key = true
  # require 'syslog/logger'
end
