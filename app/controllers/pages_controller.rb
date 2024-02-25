class PagesController < ApplicationController
  def home
  end

  def dashboard
    @capsules = current_user.capsules
    @bookings = current_user.bookings
    @capsule_bookings = Booking.where(capsule_id: @capsules.pluck(:id))
  end
end
