class ActivitiesController < ApplicationController

  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create

    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to @activity
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      # @trip.update(params.require(:trip).permit(:name, :destination))
      redirect_to @activity
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
  end

  def update
    @activity = Activity.update(activity_params)
    if @activity.update
      redirect_to @activity
    else
      render :edit
    end
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, trip_ids:[], trips_attributes: [:name, :username])
  end

end
