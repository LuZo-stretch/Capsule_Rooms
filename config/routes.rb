Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bookings, only: [:index]

  resources :capsules, only: [:show, :index, :new, :create] do
    resources :bookings, only: :create
  end

  resources :capsules, only: [:index], param: :city

  get 'dashboard', to: 'pages#dashboard'
  # Defines the root path route ("/")
  # root "posts#index"
end
