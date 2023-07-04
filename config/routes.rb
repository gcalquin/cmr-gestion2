Rails.application.routes.draw do
  resources :vendedors
  resources :offices
  resources :managers
  get 'welcome/index'



  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
end
