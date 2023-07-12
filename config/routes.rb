Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: {format: 'json'} do
      resources :restaurants, only: %i[index show]
    end
  end
  devise_for :users
  resources :restaurants do
    resources :addresses
    resources :categories do
      resources :dishes
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"
end
