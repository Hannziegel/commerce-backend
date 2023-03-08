Rails.application.routes.draw do
  resources :inventories
  resources :categories
  resources :products
  resources :addresses
  resources :orders
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
