Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"

  get "/plants" => "plants#index"
  get "/plants/:id" => "plants#show"
  post "/plants" => "plants#create"
  patch "/plants/:id" => "plants#update"
  delete "/plants/:id" => "plants#delete"

  get "/schedules" => "schedules#index"
  get "/schedules/:id" => "schedules#show"
  post "/schedules" => "schedules#create"
  patch "/schedules/:id" => "schedules#update"
  delete "/schedules/:id" => "schedules#delete"

  post "/sessions" => "sessions#create"
end
