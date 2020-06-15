# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do

  it 'validate relation whit booking' do
    should have_many(:bookings)
  end

  it 'validates required fields' do
    should validate_presence_of(:first_name)
    should validate_presence_of(:last_name) 
    should validate_presence_of(:age) 
    should validate_presence_of(:city)
  end

  it 'validate lenght min/max first_name' do
    should validate_length_of(:first_name).is_at_least(1)
    should validate_length_of(:first_name).is_at_most(20)
  end

  it 'validate lenght min/max last name' do
    should validate_length_of(:last_name).is_at_least(1)
    should validate_length_of(:last_name).is_at_most(20)
  end

  it 'validate greate && less age' do
    should validate_numericality_of(:age).is_greater_than_or_equal_to(18)
    should validate_numericality_of(:age).is_less_than_or_equal_to(90)
  end

  it 'validate lenght min/max last name' do
    should validate_length_of(:city).is_at_least(1)
    should validate_length_of(:city).is_at_most(30)
  end

end
