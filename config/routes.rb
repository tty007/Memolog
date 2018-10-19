Rails.application.routes.draw do
  root to: 'homes#index'
<<<<<<< HEAD
  get '/about', to: 'homes#about'
  devise_for :users
=======
  devise_for :users
  get '/about', to: 'homes#about'
  resources :users, only: [:show]
>>>>>>> fbc3bd7542768c1970c218a69546fe594edca1c1
  resources :posts
end
