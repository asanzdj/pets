Rails.application.routes.draw do
  # Root page
  root 'home#index'

  # Person
  resources :person

  # Pets
  resources :pet

  # User
  get 'signup'  => 'user#new'
  resources :user

  # Login
  get 'login' => 'session#new'
  delete 'logout' => 'session#destroy'
  resources :session

end
