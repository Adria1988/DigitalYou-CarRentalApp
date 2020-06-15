require 'rails_helper'

RSpec.describe 'User API', type: :request do
  # initialize test data

  let!(:users) { create_list(:user, 10) }

  describe 'GET /user' do
    before { get '/users' }

    it 'return users not empty' do
      expect(json).not_to be_empty
    end

    it 'return 10 users ' do
      expect(json.size).to eq(10)
    end

    it 'should return status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /users/:id' do
    before { get '/users/2' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'return not empty' do
      expect(json).not_to be_empty
    end

    it 'should return a user' do
      expect(json['id']).to eq(2)
    end

    context 'when user no exists' do
      before { get '/users/15' }
      it 'return statuscode = 404' do
        expect(response).to have_http_status(404)
      end
    end
  end
end

