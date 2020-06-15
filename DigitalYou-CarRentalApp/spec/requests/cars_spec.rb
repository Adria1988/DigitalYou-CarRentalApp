# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Cars API', type: :request do
  # initialize test data

  let!(:cars) { create_list(:car, 5) }

  describe 'GET /cars' do
    before { get '/cars' }

    it 'return cars not empty' do
      expect(json).not_to be_empty
    end

    it 'return 5 cars ' do
      expect(json.size).to eq(5)
    end

    it 'should return status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /cars/:id' do
    before { get '/cars/2' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'return not empty' do
      expect(json).not_to be_empty
    end

    it 'should return a car' do
      expect(json['id']).to eq(2)
    end

    context 'when car no exists' do
      before { get '/cars/15' }
      it 'return statuscode = 404' do
        expect(response).to have_http_status(404)
      end
    end
  end
end

