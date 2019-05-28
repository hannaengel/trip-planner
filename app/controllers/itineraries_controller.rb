class ItinerariesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def update
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:day)
  end

end
