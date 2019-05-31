class SessionsController < ApplicationController
  def login
  end
  def create
     user = User.find_by(username: params[:username])
     if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to trips_path
     else
       flash[:message] = 'Invalid Login'
       redirect_to login_path
     end
   end
   def log_out
     session[:user_id] = nil
     redirect_to root_url, notice: 'Logged out!'
   end

 end
