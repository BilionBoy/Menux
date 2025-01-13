class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  private

  # Verifica se o usuário tem a função "Administrador"
  def authenticate_admin!
    puts "Função do usuário: #{current_user.funcao&.nome}"
    if current_user.funcao&.nome != "Administrador"
      flash[:alert] = "Você não tem permissão para acessar esta página."
      redirect_to root_path
    end
  end
end
