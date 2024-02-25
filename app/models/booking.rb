class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :capsule

  STATUSES = ["pending", "approved", "declined"]
  # enum status: %w[pending approved declined]
end
