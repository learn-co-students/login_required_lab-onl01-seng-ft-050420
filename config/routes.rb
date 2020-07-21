Rails.application.routes.draw do
  get :show, to: "secrets#show"
  get '/login', to: 'sessions#new'
  post :create, to: 'sessions#create'
  post :destroy, to: 'sessions#destroy'
end
