Rails.application.routes.draw do
  root 'sessions#new'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :patients  # This line generates routes for index, show, new, create, edit, update, destroy
  get 'dashboard', to: 'dashboard#index'
end

