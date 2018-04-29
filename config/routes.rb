Rails.application.routes.draw do
  root 'rides#index'  

  resources :rides, only: [:index, :new, :create, :show]
  resources :sessions, only: [:create]

  resources :users, only: [:create, :show] do
    resources :rides, only: [:new, :create]
  end

  get 'registration', to: 'users#new', as: 'registration'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  post 'filter_by_state', to: 'rides#filter_by_state', as: 'filter_by_state'

end
