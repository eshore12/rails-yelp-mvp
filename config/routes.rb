Rails.application.routes.draw do
  # See all restaurants
  # Add new restaurant
  # Show one restaurant
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
end

# get 'restaurants', to: 'restaurants#index', as: :restaurants

# get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
# post 'restaurants', to: 'restaurants#create'

# get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
