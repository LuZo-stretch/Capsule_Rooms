class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @capsule = Capsule.find(params[:capsule_id])
    # @booking.capsule_id = @capsule.id
    @booking.capsule = @capsule
    @booking.save
    redirect_to
  end
end
