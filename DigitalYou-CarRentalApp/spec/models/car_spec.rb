# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Car, type: :model do

  it 'validate relation whit booking' do
    should have_many(:bookings)
  end

  it 'validates required fields' do
    should validate_presence_of(:name)
    should validate_presence_of(:image)
    should validate_presence_of(:type_options)
    should validate_presence_of(:price_hour)
    should validate_presence_of(:doors)
    should validate_presence_of(:gearshift)
    should validate_presence_of(:AC)
    should validate_presence_of(:luggage)
    should validate_presence_of(:pick_up_location)
  end

  it 'validate lenght min/max name' do
    should validate_length_of(:name).is_at_least(1)
    should validate_length_of(:name).is_at_most(50)
  end

  it 'validate type options min/max ' do
    should validate_length_of(:type_options).is_at_least(1)
    should validate_length_of(:type_options).is_at_most(50)
  end

  it 'validate greate && less price/hour' do
    should validate_numericality_of(:price_hour).is_greater_than_or_equal_to(10)
    should validate_numericality_of(:price_hour).is_less_than_or_equal_to(100)
  end

  it 'validate doors min/max' do
    should validate_numericality_of(:doors).is_greater_than_or_equal_to(2)
    should validate_numericality_of(:doors).is_less_than_or_equal_to(6)
  end

  it 'validate luggage min/max ' do
    should validate_numericality_of(:luggage).is_greater_than_or_equal_to(10)
    should validate_numericality_of(:luggage).is_less_than_or_equal_to(30)
  end

  it 'validate pick up location min/max title' do
    should validate_length_of(:pick_up_location).is_at_least(1)
    should validate_length_of(:pick_up_location).is_at_most(500)
  end
end
