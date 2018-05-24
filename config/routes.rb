Rails.application.routes.draw do
    
  get 'static_pages/about',as: 'about'
  get 'static_pages/help',as: 'help'
  get 'static_pages/home',as: 'home'
  
  get 'sessions/new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  #resources :timecards
  get 'timecards', to: 'timecards#show'
  patch 'timecards', to: 'timecards#update'
  
  root :to => 'sessions#new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
