Rails.application.routes.draw do
  
  root :to =>"homes#top"
  get "home/about"=>"homes#about"
  devise_for :users
  resources :books, only: [:show,:index,:create,:edit,:update,:destroy]
  resources :users, only: [:show,:index,:edit,:update]
  


end
