# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Booking, type: :model do
  it 'validate relation whit car' do
    should belong_to(:car)
  end

  it 'validate relation whit user' do
    should belong_to(:user)
  end

  it 'validates required fields' do
    should validate_presence_of(:start_date)
    should validate_presence_of(:end_date)
  end
end
