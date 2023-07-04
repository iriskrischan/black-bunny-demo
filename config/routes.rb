Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "pages", to: "pages#home"

  get "clients", to: "reservations#clients"
  get "clients", to: "reservations#client-show"

  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  get "dashboard", to: "restaurants#dashboard"

  get "time_slots", to: "time_slots#index"
  # get "reservations", to: "reservations#new"
  # get "restaurants/:id/settings", to: "restaurants#settings", as: :settings


  # resources :restaurants, only: [:show] do
  resources :reservations, only: [:index, :show, :new, :create, :update, :clients]
  # end

  patch "/reservations/:id/status", to: "reservations#status", as: :reservation_status

end
