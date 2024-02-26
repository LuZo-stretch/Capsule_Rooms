class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @capsule = Capsule.find(params[:capsule_id])
    @booking.capsule_id = @capsule.id
    @booking.user_id = current_user.id
    # @booking.capsule = @capsule
    if @booking.save
      flash[:notice] = "Capsule successfully booked!"
      redirect_to dashboard_path
    else
      redirect_to capsule_path(@capsule), status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(update_booking_params)
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def update_booking_params
    params.require(:booking).permit(:status)
  end
end
