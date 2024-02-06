Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "projects#index"
  get "/projects/:id", to: "projects#show", as: "project"
  get "/blogs", to: "posts#index", as: "posts"
  get "/blogs/new", to: "posts#new", as: "new_post"
  get "/contact", to: "pages#contact", as: "contact"
  
  get "/login", to: "sessions#show"
  post "/login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
end
