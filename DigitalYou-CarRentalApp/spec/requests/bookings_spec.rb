# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Booking API', type: :request do
  let!(:car) { create(:car) }
  let!(:user) { create(:user) }
  let!(:bookings) { create(:booking, user_id: user.id, car_id: car.id) }

  describe 'GET /bookings' do
    before { get '/bookings' }

    it 'should return status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'return not empty' do
      expect(json).not_to be_empty
    end

    it 'return 1 rooms' do
      expect(json.size).to eq(1)
    end

    it 'must be after the start date' do
      expect(json['start_date'.to_i] <= json['end_date'.to_i]).to eq(true)
    end

    it 'start date higher than end date' do
      expect(json['start_date'.to_i] > json['end_date'.to_i]).to eq(false)
    end

  end

  describe 'GET /bookings/:id' do
    before { get '/bookings/1' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'return not empty' do
      expect(json).not_to be_empty
    end

    it 'should return a booking id' do
      expect(json['id']).to eq(1)
    end

    it 'should return a user id' do
      expect(json['user_id']).to eq(user.id)
    end

    it 'should return a car id' do
      expect(json['car_id']).to eq(car.id)
    end

    context 'when booking no exists' do
      before { get '/bookings/155' }
      it 'return statuscode = 404' do
        expect(response).to have_http_status(404)
      end
    end

  end
end
