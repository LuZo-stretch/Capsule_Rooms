class Capsule < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price, presence: true


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
