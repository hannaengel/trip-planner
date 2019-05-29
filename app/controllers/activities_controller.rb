class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def show
    set_activity
    @trips = Trip.all
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
    set_activity
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
    params.require(:activity).permit(:name, :description, :trip_name)
  end

end
