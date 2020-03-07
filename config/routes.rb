Rails.application.routes.draw do

  get 'user/scaffold'
  #root 'post_images#index'
  resources :books
  #resources :users
  root to:'users#index'
  resources 'home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
end
