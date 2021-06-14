require 'rails_helper'

RSpec.describe BookForecast do
  describe 'it encapsulates current weather data for book search' do 
    it 'holds current weather data' do 
      current_info = {
        "dt": 1623532622,
        "sunrise": 1623497510,
        "sunset": 1623551460,
        "temp": 79.41,
        "feels_like": 79.41,
        "pressure": 1020,
        "humidity": 26,
        "dew_point": 41.58,
        "uvi": 9.49,
        "clouds": 1,
        "visibility": 10000,
        "wind_speed": 5.01,
        "wind_deg": 113,
        "wind_gust": 10,
        "weather": [
            {
                "id": 721,
                "main": "Haze",
                "description": "haze",
                "icon": "50d"
            }
          ]
       }

      current = BookForecast.new(current_info)
      expect(current.summary.class).to eq(String)
      expect(current.temperature.class).to eq(String)
    end
  end
end