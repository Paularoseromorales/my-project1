Rails.application.routes.draw do

  # verb "path", to: "controller#action"
  delete 'restaurants/:id', to: 'restaurants#destroy'
  patch 'restaurants/:id', to: 'restaurants#update'
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  get 'restaurants', to: 'restaurants#index'
  resources :restaurant
end
