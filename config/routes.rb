Rails.application.routes.draw do
 
  resources :order_details
  resources :orders
  resources :categories
  resources :products
  resources :users
  resources :account_activations, only: [:edit]
  
  patch 'account_activations', to: 'account_activations#edit'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get "/autologin", to: "sessions#autologin"
  get "/users", to: "users#index"
  # get "/logout", to: 'sessions#logout'
  # post "/login", to: "users#login"
  

  post "/cart", to: "orders#cart"
  patch "/submit", to: "orders#submit"

  post "/orders", to: "orders#order"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end