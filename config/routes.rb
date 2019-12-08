Rails.application.routes.draw do
  root to: 'tasks#index' #OK
  
  get 'login', to: 'sessions#new'
  post  'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
  resources :tasks
end