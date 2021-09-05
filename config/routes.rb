Rails.application.routes.draw do

  resources :matches, only: [:index, :create, :destroy]
  resources :users, only: [:index, :create, :destroy]
  resources :addresses, only: [:index, :show, :create, :destroy]

  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#create'
    end
  end
end
