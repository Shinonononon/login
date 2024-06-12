Rails.application.routes.draw do
  # Define custom routes for login and logout
  # Define resource routes for sessions and users
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

  # Health check route
  get 'up', to: 'rails/health#show', as: :rails_health_check

  # Define the root path route ("/")
end
