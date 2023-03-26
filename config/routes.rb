Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do 
    # nest resources for reviews under dog_houses here -why? good separation of concerns and easier to read code 
    resources :reviews, only: [:index, :show]
  end
  resources :reviews, only: [:show, :index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index'
  # get 'dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#review'
end
