Rails.application.routes.draw do
  # Rotas para autenticação de usuário com controlador
  devise_for :users, controllers: { registrations: "users/registrations" }

  root "home#index"

  get "home/index",          as: "home_index"
  get "home/conteudo",       as: "home_conteudo"
  get "home/avatars",        as: "home_avatars"
  get "home/buttoes",        as: "home_buttoes"
  get "home/fontes",         as: "home_fontes"
  get "home/gridsystem",     as: "home_gridsystem"
  get "home/notificacoes",   as: "home_notificacoes"
  get "home/paineis",        as: "home_paineis"
  get "home/simpleicons",    as: "home_simpleicons"
  get "home/alertas",        as: "home_alertas"
  get "home/tipografia",     as: "home_tipografia"
  get "home/grafico",        as: "home_grafico"
  get "home/minigrafico",    as: "home_minigrafico"
  get "home/datatables",     as: "home_datatables"
  get "home/tabelas",        as: "home_tabelas"
end
