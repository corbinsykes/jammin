class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_authentication

  def check_authentication
    not_authenticated unless logged_in?
  end

  def not_authenticated
    session[:return_to_url] = request.fullpath
    redirect_to log_in_path
  end

end
