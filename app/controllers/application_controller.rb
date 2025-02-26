class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Definir o layout de acordo com o controller
  before_action :set_layout_by_controller

  private

  # Verifica se o usuário tem a função "Administrador"
  def authenticate_admin!
    puts "Função do usuário: #{current_user.funcao&.nome}"
    if current_user.funcao&.nome != "Administrador"
      flash[:alert] = "Você não tem permissão para acessar esta página."
      redirect_to root_path
    end
  end

  def set_layout_by_controller
    if devise_controller?
      self.class.layout "devise_application"
    elsif controller_name == "landing"
      self.class.layout "cardapio"
    else
      self.class.layout "application"
    end
  end
end
