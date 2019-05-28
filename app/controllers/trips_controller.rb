class TripsController < ApplicationController

  before_action :set_trip, only: [:show, :edit, :destroy]

  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    byebug
    @trip = Trip.create(trip_params)
    redirect_to @trip
    # @trip = Trip.new(trip_params)
    # if @trip.save
    #   redirect_to @trip
    # else
    #   render :new
    # end
  end

  def update
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
tripupdate
    params.require(:trip).permit(:name, :destination, :user_id)
  end

end
