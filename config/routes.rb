Rails.application.routes.draw do
  resources :profiles, only: [:show]

  # Follow path
  post 'follow/:id', to: 'follows#follow', as: :follow
  # Unfollow path
  post 'unfollow/:id', to: 'follows#unfollow', as: :unfollow

  root 'pages#home'
  resources :tweets
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
