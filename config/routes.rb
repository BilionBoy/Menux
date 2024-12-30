Rails.application.routes.draw do
  # Rotas para autenticação de usuário com controlador
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root 'home#index'

  get 'home/index', as: 'home_index'
  # Rotas para as unidades
  get 'unidades/u_sabores_italia', to: 'unidades#u_sabores_italia', as: 'u_sabores_italia'
end
