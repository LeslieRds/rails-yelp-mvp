Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'restaurants', to: 'restaurants#index', as: :restaurants
  # get 'restaurants/new', to: 'restaurants#new'
  # get 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show'

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :create]
  end
end
