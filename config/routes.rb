require 'sidekiq/web'

Rails.application.routes.draw do
  get 'account_support/show'

  resources :jobs
  devise_for :users
  root to: 'jobs#index'
end
