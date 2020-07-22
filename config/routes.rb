Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  get '/show', to: 'secrets#show'
  post '/create', to: 'sessions#create'
  post '/destroy', to: 'sessions#destroy'
  get '/home', to: 'sesisons#home'
end
