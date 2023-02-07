Rails.application.routes.draw do
  resources :inventory_foods
  resources :recipe_foods
  resources :recipes
  resources :inventories
  resources :foods
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
