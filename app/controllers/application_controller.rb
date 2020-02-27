class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #以下を追加
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    puts 'work'
    stored_location_for(resource) || user_path
  end

  def configure_permitted_parameters
    #strong parametersを設定し、usernameを許可
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :password, :password_confirmation) }
  end


end
