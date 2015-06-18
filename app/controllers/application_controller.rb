class ApplicationController < ActionController::Base
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

    def require_login
      unless logged_in?
        flash[:error] = "Please log in to access page"
        redirect_to login_path
      end
    end
end
