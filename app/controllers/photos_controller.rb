class PhotosController < ApplicationController


  def index
    @photos = Photo.where(trip_id: current_user.trip_ids)
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

  def destroy
    set_photo
    @photo.destroy
    redirect_to photos_path
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image, :description, :trip_id)
  end

end
