class ActivitiesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def update
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :desciption)
  end

end
