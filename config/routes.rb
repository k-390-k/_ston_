Rails.application.routes.draw do
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/edit'
  root 'toppages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
