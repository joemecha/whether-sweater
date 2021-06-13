require 'rails_helper'

describe 'Retrieve a forecast for a city' do
  describe 'Happy Path' do
    it 'Sends required all forecast data', :vcr do
      get '/api/v1/forecast', params: {location:"boulder,co"}
      weather_report = JSON.parse(response.body,symbolize_names: true)
      expect(response).to be_successful
      expect(weather_report).to be_a Hash
    end
  end

  describe 'Sad Path' do
    it 'sends an error when an invalid location is sent', :vcr do 
      get '/api/v1/forecast', params: {location:"matsumoto,co"}
      weather_report = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(404)
      expect(weather).to be_a(Hash)
      expect(weather).to have_key(:errors)
      expect(weather[:errors]).to eq("Location not found")
    end
  end
end