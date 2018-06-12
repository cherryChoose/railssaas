require 'sidekiq/web'
Rails.application.routes.draw do
  root to: 'users#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :passwords
  resources :products
  resources :articles do
    resources :comments
  end

  resources :projects
  resources :tasks
  mount Sidekiq::Web, at:'/sidekiq'
  # get '(errors)/:status', to: "errors#show", constraints: {status: /\d{3}/}
end
