Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'
  get 'log_in', to: 'sessions#new'
  post 'log_in', to: 'sessions#create'
  

  resources :users
  resources :rides
  resources :attractions
end
