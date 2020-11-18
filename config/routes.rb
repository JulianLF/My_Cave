Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resource :users, only: %[] do
    resources :products, only: %i[index new]
  end
  resources :products, except: [:new] do
    resource :carts, only: [:create]
  end
  resources :carts, only: %i[index destroy]
  resources :transactions, only: %i[index show create]
end
