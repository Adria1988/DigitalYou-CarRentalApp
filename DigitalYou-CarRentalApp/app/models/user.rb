# frozen_string_literal: true

class User < ApplicationRecord
  has_many :bookings

  validates :first_name, presence: true, length: { minimum: 1, maximum: 20 }
  validates :last_name, presence: true, length: { minimum: 1, maximum: 20 }
  validates :age, presence: true, numericality: { only_interger: true, greater_than_or_equal_to: 18, less_than_or_equal_to: 90 }
  validates :city, presence: true, length: { minimum: 1, maximum: 30 }
end
