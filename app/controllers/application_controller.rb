class ApplicationController < ActionController::Base
helper_method :redirect_user, :current_user, :logged_in?

private

def current_user
@current_user ||= User.find(session[:user_id]) if session[:user_id]
end

def redirect_user
  set_user
  if current_user.id != @user.id
redirect_to user_path(current_user.id)
end
end

end
