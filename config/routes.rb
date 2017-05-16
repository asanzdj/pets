Rails.application.routes.draw do
  # Root page
  root 'home#index'

  # Person
  resources :person

  # Pets
  resources :pet

end
