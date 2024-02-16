class CapsulesController < ApplicationController
  def show
    @capsule = Capsule.find(params[:id])
    @booking = Booking.new
  end

  def index
    @capsules = Capsule.all
  end
end
