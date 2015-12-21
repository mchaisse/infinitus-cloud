# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :redis_store, {
  redis_server: APP_CONFIG['redis']['session']['uri'],
  key:          APP_CONFIG['redis']['session']['key'],
  expire_after: APP_CONFIG['redis']['session']['expires_in'],
  secure:       Rails.env.production?
}
