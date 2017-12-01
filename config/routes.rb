Rails.application.routes.draw do
  get 'dashboard', to: "users#dashboard"

  patch  "reservations/:id/decline", to: "reservations#decline", as: :decline_booking
  patch  "reservations/:id/accept", to: "reservations#accept", as: :accept_booking

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bikes, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reservations, only: [:new, :create, :index]
    collection do
      get 'mybikes', to: "bikes#mybikes", as: :mybikes
    end
    resources :reviews, only: :create
  end
end
