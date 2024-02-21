class User < ApplicationRecord
  has_many :capsules, dependent: :destroy
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def booking_requests
    self.capsules.map do |capsule|
      capsule.bookings.where(status: "pending")
    end.flatten
  end
end
