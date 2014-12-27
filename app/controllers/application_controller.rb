class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?  
  
  # Confirms a logged-in user.
    def logged_in_user
      unless user_signed_in?
        flash[:danger] = "Please log in."
        redirect_to new_session_path(:user)
      end
    end

  protected

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up) << :name << :posts
	    devise_parameter_sanitizer.for(:account_update) << :name << :posts
	  end
end
