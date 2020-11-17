Rails.application.routes.draw do
  devise_for :users do
    resources :products, except: %i[index]
  end
  root to: 'pages#home'
  resources :products, only: %i[index show]
end
