# frozen_string_literal: true

class Car < ApplicationRecord
  has_many :bookings

  validates_presence_of :gearshift, :AC
  validates :name, presence: true, length: { minimum: 1, maximum: 50 }
  validates :type_options, presence: true, length: { minimum: 1, maximum: 50 }
  validates :image, presence: true
  validates :price_hour, presence: true, numericality: { only_float: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 100 }
  validates :doors, presence: true, numericality: { only_interger: true, greater_than_or_equal_to: 2, less_than_or_equal_to: 6 }
  validates :luggage, presence: true, numericality: { only_float: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 30 }
  validates :pick_up_location, presence: true, length: { minimum: 1, maximum: 500 }
end
