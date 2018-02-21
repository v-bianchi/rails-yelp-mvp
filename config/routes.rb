Rails.application.routes.draw do
  get 'restaurants/:restaurant_id/reviews/new' , to: 'reviews#new', as: 'reviews_new'

  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
  post 'restaurants/:restaurant_id', to: 'reviews#create'

  get 'restaurants', to: 'restaurants#index'

  get 'restaurants/new'

  post 'restaurants', to: 'restaurants#create'

  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant_reviews'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
