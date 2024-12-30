class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  layout :layout_by_controller

  private

  def layout_by_controller
    if devise_controller?
      "devise"
    elsif controller_name == "home"
      "home_application"
    else
      "application"
    end
  end
end
