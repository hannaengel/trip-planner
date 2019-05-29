class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def create
    @photo = Photo.create!(photo_params)

    redirect_to @photo
  end

  def show
    set_photo
    
  end


  def new
    @photo = Photo.new
  end

  def update
    set_photo
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image, :description, :trip_id)
  end

end
