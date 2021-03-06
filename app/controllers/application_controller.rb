class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #以下を追加
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to '/home', :notice => ''
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
#  def after_sign_in_path_for(resource)
#    puts 'work'
#    stored_location_for(resource) || user_path
#  end

  def configure_permitted_parameters
    #strong parametersを設定し、usernameを許可
    #devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :password, :password_confirmation) }
     devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:name, :email, :password, :password_confirmation) }
     devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:name, :password, :password_confirmation) }
  end

  #def configure_permitted_parameters
  #  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  #end
end
