require 'rails_helper'

RSpec.describe 'WeatherFacade' do 
  describe "Happy path - data returned as expected" do
    it 'returns current_weather daily_weather, hourly_weather data for a location', :vcr do 
      location = "boulder,co"
      response = WeatherFacade.get_forecast_for_a_city(location)
      expect(response).to be_a(Forecast)
    end
  end 
  describe "Sad path - location not found" do
    it 'returns an error in location blank', :vcr do 
      location = ""
      response = WeatherFacade.get_forecast_for_a_city(location)
      expect(response).to eq(:error)
    end
    it 'does not return an error if location is not blank no matter how strange', :vcr do 
      location = "n0plac3"
      response = WeatherFacade.get_forecast_for_a_city(location)
      expect(response).to be_a(Forecast)
    end
  end 
end