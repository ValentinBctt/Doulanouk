require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Other configurations...

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: 587,
    domain: 'gmail.com',
    user_name: 'valentin.bctt@gmail.com',
    password: 'qwkl cjqb sidy jcub',
    authentication: 'plain',
    enable_starttls_auto: true
  }
    config.action_mailer.default_url_options = {
    host: 'anoukdoula-7b88db9decfb.herokuapp.com',
    protocol: 'https'
  }

  # Cache classes and eager load code for production performance
  config.cache_classes = true
  config.eager_load = true

  # Full error reports are disabled and caching is enabled
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Assets - compile assets before deploy, do not compile on the fly
  config.assets.compile = false
  config.assets.precompile += %w( application.css application.js )

  # Active Storage - use Cloudinary (ensure env vars are configured)
  config.active_storage.service = :cloudinary

  # Force SSL to enforce HTTPS
  config.force_ssl = true

  # Logging configuration
  config.logger = ActiveSupport::Logger.new(STDOUT)
                .tap  { |logger| logger.formatter = ::Logger::Formatter.new }
                .then { |logger| ActiveSupport::TaggedLogging.new(logger) }
  config.log_tags = [ :request_id ]
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  # Other config options
  config.action_mailer.perform_caching = false
  config.i18n.fallbacks = true
  config.active_support.report_deprecations = false
  config.active_record.dump_schema_after_migration = false

  # Uncomment if you want to enforce master key for encrypted credentials
  # config.require_master_key = true
end
