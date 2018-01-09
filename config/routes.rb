Rails.application.routes.draw do
  root 'rides#index'
  
  get 'registration', to: 'users#new', as: 'registration'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :rides, only: [:index, :new, :create]

  resources :users, only: [:create, :show] do
    resources :rides, only: [:new, :create]
  end

  resources :sessions, only: [:create]


end
