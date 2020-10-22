Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  root 'toppages#index'

  resources :recipes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
