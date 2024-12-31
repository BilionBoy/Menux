Rails.application.routes.draw do
  # Rotas para autenticação de usuário com controlador
  devise_for :users, controllers: { registrations: "users/registrations" }

  root "home#index"

  get "home/index",    as: "home_index"
end
