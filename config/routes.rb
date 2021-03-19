Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  

  resources :users
#   post 'attractions/:id', to: 'rides#create'
  post '/attractions/:id', to: 'rides#create'
  resources :rides
  resources :attractions
end
