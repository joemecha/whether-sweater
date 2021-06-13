require 'rails_helper'

RSpec.describe "Weather Service" do
  describe "fetch_forecast_for_a_city" do 
    it "returns required current weather data for a day given a location", :vcr do
      lat = '40.0158'
      lng = '-105.2793'
      results = WeatherService.fetch_forecast_for_a_city(lat, lng)
      expect(results).to be_a(Hash)
    end 
  end
end