class CapsulesController < ApplicationController
  def index
    @capsules = Capsule.all
  end

  def new
    @capsule = Capsule.new
  end

  def create
    @capsule = Capsule.new(capsule_params)
    @capsule.user = current_user
    if @capsule.save!
      redirect_to capsule_path(@capsule), notice: "Capsule was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @capsule = Capsule.find(params[:id])
    @booking = Booking.new
    @markers = [{
      lng: @capsule.longitude,
      lat: @capsule.latitude
    }]
  end

  def destroy
    @capsule = Capsule.find(params[:id])
    @capsule.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def capsule_params
    params.require(:capsule).permit(:name, :address, :description, :price, :latitude, :longitude, photos: [])
  end
end
