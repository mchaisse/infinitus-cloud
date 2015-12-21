threads_min = Integer(ENV['MIN_THREADS'] || 2)
threads_max = Integer(ENV['MAX_THREADS'] || 5)

threads threads_min, threads_max
workers Integer(ENV['WEB_CONCURRENCY'] || 2)

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
  ActiveRecord::Base.establish_connection

  # Sidekiq doesn't create connections until you try to do something
end
