class TripsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def update
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :destination, :password_confirmation)
  end

end
