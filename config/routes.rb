Rails.application.routes.draw do
  get 'secrets/index'

  get 'secrets/show'

  get 'sessions/new'

  get 'sessions/create', to: 'sessions#create'

  post '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
