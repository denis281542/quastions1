Rails.application.routes.draw do
  resources :answers
  resources :posts
  get 'persons/profile'
  devise_for :users
  resources :users
  get 'users/index'
  root to: 'posts#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
