Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  get "/tweets" => "tweets#index"
  post "/tweets" => "tweets#create"
  get "/tweets/:id" => "tweets#show"
  patch "/tweets/:id" => "tweets#update"
  delete "/tweets/:id" => "tweets#destroy"
end
