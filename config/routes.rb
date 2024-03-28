Rails.application.routes.draw do
  resources :rooms
  
  # devise_for :users
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: "users/registrations"
      }
  
  # devise_for :admin
  devise_for :admin, controllers: {
        sessions: 'admin/sessions',
        registrations: "admin/registrations"
      }

  # root to: 'rooms#index'
  get 'rooms/index'
  root to: 'pages#home'
  # get 'pages/home'
  get 'pages/users'
  get 'pages/admin' # do not comment this line
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
