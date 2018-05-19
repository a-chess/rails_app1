Rails.application.routes.draw do
  
  get 'sessions/new'
  # root :to => 'static_pages#home'
  root :to => 'sessions#new'
  # get 'users/new'
  get 'static_pages/about',as: 'about'
  get 'static_pages/help',as: 'help'
  get 'static_pages/home',as: 'home'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  # resources :friends
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
