Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#index"
  get "/portfolio", to: "projects#index", as: "projects"
  get "/blogs", to: "posts#index", as: "posts"
  get "/blogs/new", to: "posts#new", as: "new_post"
  post "/blogs", to: "posts#create"
  
  get "/login", to: "sessions#show"
  post "/login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
end
