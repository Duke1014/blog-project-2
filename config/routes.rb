Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, :blogs

  # USERS
  get "/me", to: "users#show"
  post "/signup", to: "users#create"

  # BLOGS
  post "/blogs", to: "blogs#create"

end
