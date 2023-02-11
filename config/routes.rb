Rails.application.routes.draw do
  devise_for :users
  resources :inventory_foods
  resources :recipe_foods
  resources :recipes
  resources :inventories
  resources :foods
  resources :users
  resources :general_shopping_lists
  resources :general_shopping_list
  resources :public_recipes
  get 'shopping_list', to: 'foods#shopping_list'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
