Rails.application.routes.draw do
  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  delete 'favorites'  => 'favorites#destroy'

  resources :users do
    member do
     get :following, :followers
     get 'favorites'
    end
  end
  
  resources :microposts do
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts
  resources :relationships, only: [:create, :destroy]
  resources :favorites, onry: [:create , :destroy]
end
