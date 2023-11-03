Rails.application.routes.draw do
  resources :softwares
  resources :employees
  resources :manufacturers
  resources :devices
  resources :categories

  get 'search', :to => 'search#index'
  
  # Defines the root path route ("/")
  root "dashboard#index"
end
