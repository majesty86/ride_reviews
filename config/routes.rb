Rails.application.routes.draw do
  root 'rides#index'
  
  resources :rides
end
