require 'rails_helper'

RSpec.describe "Weather Service" do
  describe "Return weather info" do 
    it "returns required current weather data for a day given a location" do
      location = "boulder,co"
      results = WeatherService.fetch_forecast_for_a_city(location)
      expect(results).to be_a(Hash)
      expect(response).to eq(200)
    end 
  end
end