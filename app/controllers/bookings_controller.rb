class BookingsController < ApplicationController
  
  def index
    @bookings = Booking.all
  end
  
  def create

  end
end
