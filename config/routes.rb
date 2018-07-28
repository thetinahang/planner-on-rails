Rails.application.routes.draw do
  devise_for :users
  root 'planner#index', as: 'planner'
  #need to connect landing page with a new page when signed in 
  resources :days, only: [:index, :show, :new, :create, :edit]
  patch 'days/:id', to: 'days#update'
  resources :hours, only: [:index, :show, :new, :create, :edit]
  patch 'hours/:id', to: 'hours#update'
  resources :months, only: [:index, :show, :new, :create, :edit]
  patch 'months/:id', to: 'months#update'
  resources :weeks, only: [:index, :show, :new, :create, :edit]
  patch 'weeks/:id', to: 'weeks#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
