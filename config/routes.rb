Rails.application.routes.draw do
  get 'secrets/new', to: 'secrets#new'

  root 'sessions#new' 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create' 
  post '/logout', to: 'sessions#destroy'
  get '/welcome', to: 'secrets#show'
  get '/secret', to: 'secrets#secret_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
