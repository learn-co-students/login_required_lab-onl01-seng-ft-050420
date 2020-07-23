Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sessions/new', to: 'sessions#new'
  get 'sessions/create', to: 'sessions#create'
  post 'sessions/destroy', to: 'sessions#destroy'
  get 'secrets/show', to: 'secrets#show'
  root to: "sessions#index"
end
