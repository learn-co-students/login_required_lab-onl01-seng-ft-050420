Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'sessions#homepage' #don't make the router have two routes that go to the same place
get "/login", to: "sessions#new"
post "/login", to: "sessions#create"
get "/show", to: "secrets#show"
get "/logout", to: "sessions#destroy"
end

