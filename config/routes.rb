Rails.application.routes.draw do
  root 'rides#index'
  
  get 'registration', to: 'users#new', as: 'registration'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :rides
  resources :users, only: [:create, :show]
  resources :sessions, only: [:create]
end
