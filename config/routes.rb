Rails.application.routes.draw do

  root to: 'rentals#index'
  resources :landlords

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
