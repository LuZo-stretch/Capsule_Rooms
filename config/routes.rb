Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :capsules, only: [:new, :create]

  resources :bookings, only: [:index]
end
