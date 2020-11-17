Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users do
    resources :products, except: %i[index new]
  end
  resources :products #except: [:new]
  resources :carts, only: [:index]
  resources :transactions, only: %i[index show]
end
