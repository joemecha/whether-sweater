require 'rails_helper'

RSpec.describe 'WeatherFacade' do 
  it 'returns weather data for a location' do 
    response = WeatherFacade.get_forecast_for_a_city(SOMETHING-HERE)
    expect(response).to be_a(WeatherInfo)
  end
end