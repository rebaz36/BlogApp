Rails.application.routes.draw do
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
  resources :posts, only: [:new, :create]
  resources :comments, only: [:new, :create]
  resources :likes, only: [:new, :create]

  root "users#index"
end
