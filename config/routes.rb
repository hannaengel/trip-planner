Rails.application.routes.draw do

  root 'welcome#index'
  resources :photos
  resources :itineraries
  resources :activities
  resources :trips
  resources :users

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
   delete 'logout'  => 'sessions#log_out'

end
