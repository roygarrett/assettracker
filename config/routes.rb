Rails.application.routes.draw do
  get 'dashboard/index'
  resources :softwares
  resources :employees
  resources :manufacturers
  resources :devices
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "dashboard#index"
end
