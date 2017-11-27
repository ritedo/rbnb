Rails.application.routes.draw do
  get 'users/dashboard'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bikes, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:new, :create, :index]
  end
  get 'users/:id/dashboard', to: "users#dashboard", as: :dashboard
end
