Rails.application.routes.draw do
  root to: 'homes#index'
  get '/about', to: 'homes#about'
  devise_for :users
  resources :posts
end
