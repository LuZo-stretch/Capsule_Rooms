class Review < ApplicationRecord
  validates :name, presence: true
  validates :stars, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :comment, presence: true
  belongs_to :capsule
  end