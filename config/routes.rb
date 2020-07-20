Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create]
  get 'secret', to: 'secrets#show'
  post 'logout', to: 'sessions#destroy'
end
