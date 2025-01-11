Rails.application.routes.draw do
  devise_for :users
  resources :funcoes
  root "home#index"
  get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "up" => "rails/health#show", as: :rails_health_check
end
