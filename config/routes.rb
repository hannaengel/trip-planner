Rails.application.routes.draw do

  root 'welcome#index'
  resources :photos
  resources :itineraries
  resources :activities
  resources :trips
  resources :users

end
