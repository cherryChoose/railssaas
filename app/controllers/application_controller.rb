class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #rescue_from "Exception", with: :forbidden

private
  helper_method :current_user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end

  # def forbidden(exception)
  #   render text: exception.message
  # end	
end
