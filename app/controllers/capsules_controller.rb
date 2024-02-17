class CapsulesController < ApplicationController
  def index #Delete index if not needed. Don't forget to delete view too if so.
    @capsules = Capsule.all
  end

  def index
    @capsules = Capsule.all
  end

  def new
    @capsule = Capsule.new
  end

  def create
    @capsule = Capsule.new(capsule_params)
    if @capsule.save
      redirect_to root_path, notice: "Capsule was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @capsule = Capsule.find(params[:id])
    @booking = Booking.new
  end

  private

  def capsule_params
    params.require(:capsule).permit(:name, :address, :description, :price, photos: [])
  end
end
