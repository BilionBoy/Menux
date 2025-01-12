Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get "home/index"
  resources :funcoes

  # Status HTTP da aplicação
  get "up" => "rails/health#show", as: :rails_health_check
end
