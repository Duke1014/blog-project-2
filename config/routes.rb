Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blogs#index"

  resources :users, :blogs, :comments

  # USERS
  get "/me", to: "users#show"
  post "/signup", to: "users#create"

  # BLOGS
  post "/blogs", to: "blogs#create"
  get '/blogs', to: "blogs#index"
  get '/blogs/:id', to: "blogs#show"

end
