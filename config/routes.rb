Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  post '/change_spanish', to: 'main#change_spanish', as: :change_spanish
  post '/change_english', to: 'main#change_english', as: :change_english
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
