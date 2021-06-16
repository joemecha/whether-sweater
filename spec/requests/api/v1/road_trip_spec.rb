require 'rails_helper'

describe 'Road Trip Request - /api/v1/road_trip' do
  describe 'Happy Path' do
    it 'Sends required road trip data given correct params including api_key', :vcr do
      get '/api/v1/road-trip', params: {origin:"denver,co", destination:"grand canyon village,az"}
      trip_info = JSON.parse(response.body,symbolize_names: true)
      expect(response).to be_successful
      expect(trip_info).to be_a Hash
    end
  end
  
  describe 'Sad Path' do
    it 'Sends an error message when params incorrect', :vcr do
      get '/api/v1/road-trip', params: {origin:"?😛", destination:"grand canyon village,az"}
      trip_info = JSON.parse(response.body,symbolize_names: true)
      
      expect(response.status).to eq(400)
      expect(trip_info).to be_a Hash
      expect(trip_info).to have_key(:errors)
      expect(trip_info[:errors]).to eq("Missing or incorrect query params")
    end
    it 'Sends an error message when params incorrect', :vcr do
      get '/api/v1/road-trip', params: {origin:"denver,co", destination:""}
      trip_info = JSON.parse(response.body,symbolize_names: true)
      
      expect(response.status).to eq(400)
      expect(trip_info).to be_a Hash
      expect(trip_info).to have_key(:errors)
      expect(trip_info[:errors]).to eq("Missing or incorrect query params")
    end
  end
end