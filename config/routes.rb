Rails.application.routes.draw do
  # Autenticação
  devise_for :users, controllers: { registrations: "users/registrations" }

  # Rota Index
  root "home#index"
  get "home/index"

  # Rotas Dinâmicas
  resources :users_estabelecimentos
  resources :estabelecimentos
  resources :funcoes

  # Status HTTP da aplicação
  get "up" => "rails/health#show", as: :rails_health_check
end
