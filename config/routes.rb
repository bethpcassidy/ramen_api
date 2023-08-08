Rails.application.routes.draw do
  # get "/locations/:id" => "locations#show"
  # get "/zips/:id" => "zips#show"
  resources :zips, format: "json"
  resources :locations, format: "json"
  # resources :zips, only: [:index, :show, :create, :update, :destroy]
  # resources :locations, only: [:index, :show, :create, :update, :destroy]

  # get "/locations" => "locations#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
