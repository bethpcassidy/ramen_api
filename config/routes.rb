Rails.application.routes.draw do
  resources :zips, only: [:index, :show, :create, :update, :destroy]
  resources :locations, only: [:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
