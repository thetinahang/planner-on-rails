Rails.application.routes.draw do
  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root 'planner#index'
  resources :planner
  #need to connect landing page with a new page when signed in 
  resources :days, only: [:index, :show, :new, :create, :edit] #:edit
  #resources :products, only: [:show, :index, :new, :create]
  #patch 'days/:id', to: 'days#update'
  #delete '/days/:id', to: 'days#destroy'
  
  resources :hours #, only: [:index, :show, :new, :create, :edit]
  #patch 'hours/:id', to: 'hours#update'

  resources :months do 
    resources :weeks, only: [:show, :index, :new] #
  end

  #, only: [:index, :show, :new, :create, :edit]
  #patch 'months/:id', to: 'months#update'

  resources :weeks #, only: [:index, :show, :new, :create, :edit]
  #patch 'weeks/:id', to: 'weeks#update'
  get 'tasks/test', to: 'tasks#test'
  resources :tasks

  

  #get 'months/:id/weeks', to: 'months#weeks_index'
  #get 'months/:id/weeks/:id', to: 'months#week'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
