class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :capsule
  validates :start_date, presence: true
  validates :end_date, presence: true
  # before_save :owner_cannot_book_own_capsule

  STATUSES = ["pending", "approved", "declined"]
  # enum status: %w[pending approved declined]

  private

  # def owner_cannot_book_own_capsule
  #   if current_user.id == self.user_id
  #     errors.add(:owner_error, "Owners cannot book their own capsules")
  #   end
  # end
end
