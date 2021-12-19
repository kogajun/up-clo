Rails.application.routes.draw do
  devise_for :users
  get 'users/show'
  root to: "users#index"
  resources :users, only: [:index, :show]
  resources :items
end
