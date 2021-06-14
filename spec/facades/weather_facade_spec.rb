require 'rails_helper'

RSpec.describe 'WeatherFacade' do 
  describe "Happy path - data returned as expected" do
    it 'returns current_weather daily_weather, hourly_weather data for a location', :vcr do 
      location = "boulder,co"
      response = WeatherFacade.get_forecast_for_a_city(location)
      expect(response).to be_a(Forecast)
    end
  end 
  describe "Sad path" do
    describe "Bad location query params" do
      it 'returns error message', :vcr do 
        location = "?😛"
        response = WeatherFacade.get_forecast_for_a_city(location)
        expect(response).to eq(:error)
      end
    end 
  end 
end