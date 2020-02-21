Rails.application.routes.draw do
  devise_for :users
  root to: 'birds#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :birds, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :show, :create, :edit, :update]
  end
  resources :bookings, only: [:index, :destroy]
end
