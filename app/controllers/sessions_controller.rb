class SessionsController < ApplicationController
  def login
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user
      session[:current_user] = @user.id
        redirect_to @user
    else
      render :login
  end
end
def log_out
   session.delete(:user_id)
   @current_user = nil
   redirect_to login_path 
 end
end
