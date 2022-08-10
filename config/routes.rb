Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/bikes" => "bikes#index"
  post "/bikes" => "bikes#create"
  get "/bikes/:id" => "bikes#show"
  patch "/bikes/:id" => "bikes#update"
  delete "/bikes/:id" => "bikes#destroy"
end
