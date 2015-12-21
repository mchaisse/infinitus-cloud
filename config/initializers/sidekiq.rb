Sidekiq.configure_client do | config |
  config.redis = APP_CONFIG['redis']['jobs']['client']
end

Sidekiq.configure_server do | config |
  config.redis = APP_CONFIG['redis']['jobs']['server']

  # # Do not retry failed jobs
  # config.server_middleware do | chain |
  #   chain.remove Sidekiq::Middleware::Server::RetryJobs
  # end
end
