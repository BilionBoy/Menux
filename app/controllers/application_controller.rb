class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  layout :layout_by_controller

  private

  def layout_by_controller
    if devise_controller?
      'devise'
    elsif controller_name == 'home'
      'home_application'
    elsif controller_name == 'unidades'
      'unidades_application' # Aqui está a modificação para o controlador 'unidades'
    else
      'application'
    end
  end
end
