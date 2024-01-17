Rails.application.routes.draw do
  get 'postingan/index'
  
  get "/index" => "home#index"
  get "/postingan" => "postingan#index"
  get "/artikel" => "home#artikel"
  get "/about" => "home#about"
  get "/contact" => "home#contact"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  get "/" => "home#index"
  # root "posts#index"
  root "home#index"
end
