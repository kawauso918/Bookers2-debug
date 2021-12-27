Rails.application.routes.draw do
  devise_for :users
  get '/home/about' => 'homes#about'
  resources :books
  resources :users, only: [:show,:index,:edit,:update]
  root 'homes#top'

  
end