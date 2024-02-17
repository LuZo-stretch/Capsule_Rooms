class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @capsule = Capsule.find(params[:capsule_id])
    @booking.capsule_id = @capsule.id
    @booking.user_id = current_user.id
    # @booking.capsule = @capsule
    if @booking.save
      redirect_to root_path
    else
      redirect_to capsule_path(@capsule), status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
