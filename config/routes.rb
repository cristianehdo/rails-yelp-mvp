Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [ :new, :create, :index ]
   #  new_restaurant_review  GET   /restaurants/:restaurant_id/reviews/new  reviews#new
   # restaurant_reviews  POST  /restaurants/:restaurant_id/reviews      reviews#create
  end

end


# restaurants
# index, new, show,
# review
