class PhotosController < ApplicationController
  def index
    @photos = Photo.all
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
    params.require(:photo).permit(:image, :desciption, :trip_id)
  end

end
