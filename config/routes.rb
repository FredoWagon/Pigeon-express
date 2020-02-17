Rails.application.routes.draw do
  devise_for :users
  root to: 'birds#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :birds, only: [:index, :show] do
    resources :bookings, only: [:new, :show, :create]
  end
  resources :bookings, only: [:index]
end
