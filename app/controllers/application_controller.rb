class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # Definir layout com base no tipo de usuário (tem ou não estabelecimento)
  before_action :set_layout, if: :user_signed_in?, unless: :devise_controller?

  private

  # Verifica se o usuário tem um estabelecimento associado e ajusta o layout
  def set_layout
    if current_user && current_user.estabelecimentos.any?
      # Usar o layout específico para estabelecimentos
      self.class.layout "estabelecimento"
    else
      # Usar o layout padrão
      self.class.layout "application"
    end
  end

  # Verifica se o usuário tem a função "Administrador"
  def authenticate_admin!
    if current_user.funcao&.nome != "Administrador"
      flash[:alert] = "Você não tem permissão para acessar esta página."
      redirect_to root_path
    end
  end
end
