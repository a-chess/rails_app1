Rails.application.routes.draw do
  root :to => 'page_tops#index'
  get 'users/new'
  get '/signup', to: 'users#new'
  resources :friends
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
