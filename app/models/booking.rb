class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :capsule
  validates :start_date, presence: true
  validates :end_date, presence: true

  STATUSES = ["pending", "approved", "declined"]
  # enum status: %w[pending approved declined]
end
