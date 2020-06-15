# frozen_string_literal: true

Rails.application.routes.draw do
  post 'cars/new', to: 'cars#create'
  post "cars/:id/edit", to:"cars#update"
  post 'users/new', to: 'users#create'
  post "users/:id/edit", to:"users#update"
  post 'bookings/new', to: 'bookings#create'
  
  
  resources :cars
  resources :users
  resources :bookings
end
