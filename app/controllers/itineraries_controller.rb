class ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.all
  end

  def show
    set_itinerary
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

  def update
    set_itinerary
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:day)
  end

end
