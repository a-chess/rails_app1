Rails.application.routes.draw do
    
  get 'timecard_master_mente/index'
  get 'static_pages/about',as: 'about'
  get 'static_pages/help',as: 'help'
  get 'static_pages/home',as: 'home'
  
  get 'sessions/new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  
  get 'timecards/index'
  get 'timecards/:id', to: 'timecards#show'
  get 'timecards/:id/edit', to: 'timecards#edit'
  patch 'timecards', to: 'timecards#update'
  
  get 'approval', to: 'approval#index'
  get 'approval/(:target)', to: 'approval#index'
  patch 'approval(:id)', to: 'approval#update'
  
  get 'tcmente', to: 'timecard_master_mente#index'
  
  root :to => 'sessions#new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
