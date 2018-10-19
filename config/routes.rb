Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users
  get '/about', to: 'homes#about'
  resources :users, only: [:show]
  resources :posts
end
