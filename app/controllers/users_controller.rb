class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
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
