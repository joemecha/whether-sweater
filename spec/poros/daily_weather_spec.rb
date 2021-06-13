require 'rails_helper'

RSpec.describe DailyWeather do
  describe 'it encapsulates current weather data' do 
    it 'holds daily weather data for five days' do 
      daily_info = {
        "dt": 1623524400,
        "sunrise": 1623497510,
        "sunset": 1623551460,
        "moonrise": 1623503400,
        "moonset": 1623559680,
        "moon_phase": 0.07,
        "temp": {
            "day": 78.4,
            "min": 50.16,
            "max": 79.56,
            "night": 61.02,
            "eve": 75.56,
            "morn": 57.9
        },
        "feels_like": {
            "day": 77.07,
            "night": 58.51,
            "eve": 74.23,
            "morn": 55.18
        },
        "pressure": 1017,
        "humidity": 24,
        "dew_point": 38.68,
        "wind_speed": 7.34,
        "wind_deg": 72,
        "wind_gust": 10.49,
        "weather": [
            {
                "id": 800,
                "main": "Clear",
                "description": "clear sky",
                "icon": "01d"
            }
        ],
        "clouds": 1,
        "pop": 0,
        "uvi": 12.21
        }

      daily = DailyWeather.new(daily_info)
      expect(daily.date.class).to eq(String)
      expect(daily.date).to eq("2021-06-12 14:00:00 -0500")
      expect(daily.sunrise.class).to eq(String)
      expect(daily.sunrise).to eq("2021-06-12 06:31:50 -0500")
      expect(daily.sunset.class).to eq(String)
      expect(daily.sunset).to eq("2021-06-12 21:31:00 -0500")
      expect(daily.max_temp.class).to eq(Float)
      expect(daily.min_temp.class).to eq(Float)
      expect(daily.conditions.class).to eq(String)
      expect(daily.icon.class).to eq(String)
    end 
  end
end