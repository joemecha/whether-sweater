require 'rails_helper'

RSpec.describe HourlyWeather do
  describe 'it encapsulates hourly weather data' do 
    it 'holds hourly weather data for one of eight hours' do 
      hourly_info = {
        "dt": 1623531600,
        "temp": 79.41,
        "feels_like": 79.41,
        "pressure": 1020,
        "humidity": 26,
        "dew_point": 41.58,
        "uvi": 9.49,
        "clouds": 1,
        "visibility": 10000,
        "wind_speed": 5.68,
        "wind_deg": 77,
        "wind_gust": 10.49,
        "weather": [
            {
                "id": 800,
                "main": "Clear",
                "description": "clear sky",
                "icon": "01d"
            }
        ],
        "pop": 0
      }

      hourly = HourlyWeather.new(hourly_info)
      expect(hourly.time.class).to eq(String)
      expect(hourly.temperature.class).to eq(Float)
      expect(hourly.conditions.class).to eq(String)
      expect(hourly.icon.class).to eq(String)
    end
  end
end