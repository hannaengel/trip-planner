class ItinerariesController < ApplicationController

    before_action :set_itinerary, only: [:show, :edit, :update, :destroy]

  def index
    @itineraries = current_user.itineraries
  end

  def show
  end

  def new
    @itinerary = Itinerary.new
  end

  def create

    @itinerary = Itinerary.new(itinerary_params)
    if @itinerary.save
      redirect_to @itinerary
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @itinerary.update(itinerary_params)
      redirect_to @itinerary
    else
      render :edit
    end
  end

  def destroy
    @itinerary.destroy
    redirect_to itineraries_path
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:day, :trip_id, :activity_id)
  end

end
