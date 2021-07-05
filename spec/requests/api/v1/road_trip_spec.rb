require 'rails_helper'

describe 'Road Trip Request - /api/v1/road_trip' do
  before :each do
    User.destroy_all
    @user = User.create!(email: 'someone@example.com', password: 'password', password_confirmation: 'password')
    @user.api_key = SecureRandom.hex
  end
  describe 'Happy Path' do
    it 'Sends required road trip data given correct params including api_key', :vcr do
      post '/api/v1/road_trip', params: {origin:"denver,co", destination:"grand canyon village,az", api_key:"#{@user.api_key}"}
      trip_info = JSON.parse(response.body,symbolize_names: true)
      expect(response).to be_successful
      expect(trip_info).to be_a Hash
    end
    
    it 'LONG TRIP - Sends required road trip data given correct params including api_key', :vcr do
      post '/api/v1/road_trip', params: {origin:"miami,fl", destination:"fairbanks,ak", api_key:"#{@user.api_key}"}
      trip_info = JSON.parse(response.body,symbolize_names: true)
      
      expect(response).to be_successful
      expect(trip_info).to be_a Hash
    end
  end
  
  describe 'Sad Path' do
    it 'Sends an error message when params incorrect', :vcr do
      post '/api/v1/road_trip', params: {origin:"?😛", destination:"grand canyon village,az", api_key:"#{@user.api_key}"}
      trip_info = JSON.parse(response.body,symbolize_names: true)
      
      expect(response.status).to eq(400)
      expect(trip_info).to be_a Hash
      expect(trip_info).to have_key(:errors)
      expect(trip_info[:errors]).to eq("Missing or incorrect query params")
    end
    it 'Sends an error message when params incorrect', :vcr do
      post '/api/v1/road_trip', params: {origin:"denver,co", destination:"", api_key:"#{@user.api_key}"}
      trip_info = JSON.parse(response.body,symbolize_names: true)
      
      expect(response.status).to eq(400)
      expect(trip_info).to be_a Hash
      expect(trip_info).to have_key(:errors)
      expect(trip_info[:errors]).to eq("Missing or incorrect query params")
    end
    it 'Sends an error message when no possible driving route', :vcr do
      post '/api/v1/road_trip', params: {origin:"denver,co", destination:"hilo,hi", api_key:"#{@user.api_key}"}
      trip_info = JSON.parse(response.body,symbolize_names: true)
      
      expect(response.status).to eq(400)
      expect(trip_info).to be_a Hash
      expect(trip_info).to have_key(:errors)
      expect(trip_info[:errors]).to eq("Impossible route")
    end
  end
end