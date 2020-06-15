# frozen_string_literal: true

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :start_date, :end_date, presence: true
  validate :user_id
  validate :car_id
  validate :validate_date_after_start_date
  validate :validate_booking

  private

  def validate_date_after_start_date
    return if end_date.nil? || start_date.nil?

    if end_date < start_date
      errors.add(:end_date, 'must be after the start date')
    end
  end

  def validate_booking
    booking_exist = Booking.where("DATE(end_date) > DATE('now') and user_id = ?", user_id)
    
    unless booking_exist.empty?
      errors.add(:end_date, 'reservation limit exceeded')
    end
  end
end
