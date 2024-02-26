Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bookings, only: [:index, :update]

  resources :capsules, only: [:show, :index, :new, :create, :destroy] do
    resources :bookings, only: :create
    resources :reviews, only: [:new, :create]
  end
end
  # Defines the root path route ("/")
  # root "posts#index"
