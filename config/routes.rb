Rails.application.routes.draw do
  require "sidekiq/web"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Mount the sidekiq monitoring interface for async jobs
  # TODO: replace with a real authentication
  Sidekiq::Web.use Rack::Auth::Basic do | username, password |
    username == ENV['SIDEKIQ_USERNAME'] && password == ENV['SIDEKIQ_PASSWORD']
  end if Rails.env.production?
  mount Sidekiq::Web, at: '/sidekiq'
end
