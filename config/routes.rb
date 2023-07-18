Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  devise_for :users
  resources :restaurants do
    resources :addresses
    resources :categories do
      resources :dishes
    end
  end

  namespace :api do
    namespace :v1 do
      resources :restaurants do
        get ':name', on: :collection, action: :show_by_name
      end
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"
end
