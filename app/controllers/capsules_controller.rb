class CapsulesController < ApplicationController
  def show
    @capsule = Capsule.find(params[:id])
    @booking = Booking.new
  end
end
