Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  scope '/(:locale)', locale: /en|es/ do
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

    root "main#index"
  end
end
