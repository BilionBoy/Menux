Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  # Index
  root "home#index"
  get "home/index"
  get "usuarios/index"
  get "landing/index"

  # Rotas Dinâmicas
  resources :funcoes
  resources :estabelecimentos
  resources :users_estabelecimentos
  resources :produtos
  resources :categorias
  resources :usuarios, only: [ :index, :show, :destroy ] # Adicionando a rota :destroy
  resources :pedidos


  # Status HTTP da aplicação
  get "up" => "rails/health#show", as: :rails_health_check
end
