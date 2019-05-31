class UsersController < ApplicationController

  def index
  end

  def show
    set_user
  end

  def new
    @user = User.new
  end


  def create

      user = User.new(user_params)
      if user.valid?
        user.save
        session[:user_id] = user.id
        redirect_to trips_path
      else
         flash[:message] = 'Not Valid'
        redirect_to new_user_path
      end
    end




  def update
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
