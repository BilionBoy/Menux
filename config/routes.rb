Rails.application.routes.draw do
  # Index
  devise_for :users, controllers: { registrations: "users/registrations" }
  root "home#index"
  get "home/index"

  # Rotas Dinâmicas
  resources :funcoes
  resources :estabelecimentos
  resources :users_estabelecimentos

  # Status HTTP da aplicação
  get "up" => "rails/health#show", as: :rails_health_check
end
