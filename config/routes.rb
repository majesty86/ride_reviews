Rails.application.routes.draw do
  root 'rides#index'
  get 'register', to: 'users#new', as: 'register'
  resources :rides
  resources :users, only: [:create, :show]
end
