Rails.application.routes.draw do
  devise_for :users
  resources :dishes
  resources :addresses
  resources :restaurants do
    resources :categories
  end

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
