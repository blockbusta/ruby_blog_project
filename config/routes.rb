Rails.application.routes.draw do
  devise_for :users
  get '/users', to: 'welcome#index'

  resources :articles
  resources :cars
  
  root to: 'welcome#index'
end