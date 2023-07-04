Rails.application.routes.draw do
  devise_for :users
  resources :dishes
  resources :categories
  resources :addresses
  resources :restaurants

  # resources :restaurants do
  #   resources :addresses
  #   resources :categories do
  #     resources :dishes
  #   end
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"
end
