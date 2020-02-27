Rails.application.routes.draw do

  resources :books
  #resources :users
  root to:'home#index'
  get 'home/about'
  get 'home/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
end
