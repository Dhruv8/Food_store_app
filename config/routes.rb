Rails.application.routes.draw do
  get 'summary/bill_receipt'

  resources :time_slots
  resources :payment_methods
  resources :delivery_boys
  resources :localities
  resources :addresses
  resources :orders
  resources :food_items
  root to: 'food_items#index'
  devise_for :users
  
  #Custom Routes
  get '/order_payments', to: 'payment_methods#order_payment', as: 'new_order_payment'
  get '/order_summary', to: 'summary#bill_receipt', as: 'order_summary'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
