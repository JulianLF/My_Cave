Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resource :users, only: [] do
    resources :products, only: [:new]
    get "/shop", to: "products#shop"
  end
  resources :products, except: [:new] do
    resources :carts, only: [:create]
  end
  resources :carts, only: %i[index destroy]
  resources :transactions, only: %i[index show create]
  resources :categories
end
