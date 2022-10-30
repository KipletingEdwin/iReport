Rails.application.routes.draw do
  resources :incidents
  resources :users, only: [ :create, :index]

  post '/login', to: 'auth#create' 
  get '/profile', to: 'user#profile'

  post '/' => 'incidents#create'

  

end
