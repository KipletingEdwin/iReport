Rails.application.routes.draw do
  resources :admins
  resources :incidents, only: [:index, :create, :show, :update, :delete]
  resources :users, only: [ :create, :index]

  post '/login', to: 'auth#create' 
  get '/profile', to: 'user#profile'
  


  


  

end
