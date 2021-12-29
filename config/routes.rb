Rails.application.routes.draw do
  devise_for :users
  get '/home/about' => 'homes#about'
  
  resources :users, only:[:index, :show, :edit, :update] do
    member do
    get :follows, :followers
  end
    resource :relationships, only: [:create, :destroy]
  end
  
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end 
  root 'homes#top'

  
end