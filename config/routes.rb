Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#index"
  get "/portfolio", to: "projects#index", as: "projects"

  resources :posts
  
  get "/login", to: "sessions#show"
  post "/login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
end
