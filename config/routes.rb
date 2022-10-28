Rails.application.routes.draw do
  resources :admins
  resources :incidents, only: [:index, :create, :show, :update, :delete]
  resources :users, only: [ :create]

  post '/login', to: 'auth#create' 
  get '/profile', to: 'user#profile'
  # post '/admins', to: 'admins#create' 


  

end
