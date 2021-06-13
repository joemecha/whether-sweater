require 'rails_helper'

RSpec.describe 'WeatherFacade' do 
  it 'returns current_weather daily_weather, hourly_weather data for a location', :vcr do 
    location = "boulder,co"
    response = WeatherFacade.get_forecast_for_a_city(location)
    expect(response).to be_a(Forecast)
  end

  # SAD or EDGE cases
end