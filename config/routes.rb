Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  # get 'restaurants/new'
  # get 'restaurants/show'
  # get 'restaurants/create'
  # get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'rastaurants#show'

  resources :restaurants, only: [:new, :show, :create, :index] do
    resources :reviews, only: [:new, :create]
  end
end
