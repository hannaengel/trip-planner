class PhotosController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def update
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image, :desciption, :trip_id)
  end

end
