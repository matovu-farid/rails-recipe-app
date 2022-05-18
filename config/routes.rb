Rails.application.routes.draw do
  resources :recipes
  resources :recipe_foods, only: [:edit, :create, :destroy] 
  resources :foods , except: [:show]
  devise_for :users
  get '/public_recipes', to: 'recipes#public'
  get '/general_shopping_list', to: 'shopping_list#index'
  root to: "recipes#public"
end
