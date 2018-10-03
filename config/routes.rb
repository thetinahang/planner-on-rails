Rails.application.routes.draw do
  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root 'planner#index'
  resources :planner
  #need to connect landing page with a new page when signed in 
  resources :days
  #patch 'days', to: 'days#update'
  
  resources :hours 

  resources :months do 
    resources :weeks, only: [:show, :index, :new] #
  end

  resources :weeks 

  get 'tasks/test', to: 'tasks#test'
  resources :tasks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
