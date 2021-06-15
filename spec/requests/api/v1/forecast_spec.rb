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
    it 'Sends an error message when location not found', :vcr do
      get '/api/v1/forecast', params: {location:""}
      weather_report = JSON.parse(response.body,symbolize_names: true)

      expect(response.status).to eq(400)
      expect(weather_report).to be_a Hash
      expect(weather_report).to have_key(:errors)
      expect(weather_report[:errors]).to eq("Missing or incorrect query params")
    end
  end
end