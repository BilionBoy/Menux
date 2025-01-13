Rails.application.routes.draw do
  resources :users_estabelecimentos
  resources :estabelecimentos
  devise_for :users, controllers: { registrations: "users/registrations" }
  root "home#index"
  get "home/index"
  resources :funcoes

  # Status HTTP da aplicação
  get "up" => "rails/health#show", as: :rails_health_check
end
