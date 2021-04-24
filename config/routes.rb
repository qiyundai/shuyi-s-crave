Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes do
    resources :comments, only: [:new, :create, :edit, :update, :destroy]
    resources :recipe_ingredients, only: [:create, :delete]
    resources :steps, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :ingredients, only: [:new, :create, :edit, :update]
end