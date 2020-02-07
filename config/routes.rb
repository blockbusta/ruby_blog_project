Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :cars
  
  root to: 'welcome#index'
end