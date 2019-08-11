Rails.application.routes.draw do
  resources :users
  resources :rental_dates
  resources :rentals
  root 'welcome#index'
  resources :equipment
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
