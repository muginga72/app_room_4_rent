Rails.application.routes.draw do
  resources :rooms
  devise_for :admin, controllers: {
        sessions: 'admin/sessions',
        registrations: "admin/registrations"
      }

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: "users/registrations"
      }

  # authenticated :user do
  #   root to: 'rooms#show', as: :authenticated_root
  # end
  # authenticated :user do
  #   root to: 'pages#home', as: :authenticated_root
  # end
  
  root to: 'rooms#index'
  get 'pages/home'
  get 'pages/users'
  get 'pages/admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
