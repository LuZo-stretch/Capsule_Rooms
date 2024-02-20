class PagesController < ApplicationController
  def home
  end

  def dashboard
    @capsules = current_user.capsules
    @bookings = current_user.bookings
  end
end
