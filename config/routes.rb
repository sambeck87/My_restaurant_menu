Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'users/update'
  get 'users/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
