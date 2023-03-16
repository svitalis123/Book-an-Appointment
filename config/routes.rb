Rails.application.routes.draw do
  resources :services, only: [:index, :create, :destroy]
  resource :users, only: [:index, :create]
  resources :reservation_users, only: [:index, :create]
  resources :reservation, only: [:index, :create]
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"
end
