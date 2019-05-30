class ApplicationController < ActionController::Base
helper_method :redirect_user, :current_user, :logged_in?

  def redirect_user
    redirect_to new_user_path if !logged_in?
  end

  def current_user
        @current_user ||= User.find_by_id(session[:user])
  end

    def logged_in?
     current_user != nil
    end
end
