Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.
  APP_CONFIG ||= YAML.load(ERB.new(File.read("#{Rails.root.to_s}/config/config.yml")).result)[Rails.env]

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Redis cache
  config.cache_store = :redis_store, APP_CONFIG['redis']['cache']['uri'], {
    namespace:  APP_CONFIG['redis']['cache']['namespace'],
    expires_in: APP_CONFIG['redis']['cache']['expires_in']
  }

  # Configure some gems after app initialization
  config.after_initialize do
    # Bullet configuration
    Bullet.enable = true # enable Bullet gem, otherwise do nothing
    Bullet.console = true # log warnings to your browser's console.log
    Bullet.rails_logger = true # add warnings directly to the Rails log
    # Detect unnecessary COUNT queries which could be avoided with a counter_cache
    Bullet.counter_cache_enable = false

    # Better errors configuration
    BetterErrors.editor = :sublime
  end
end
