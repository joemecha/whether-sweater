require 'rails_helper'

RSpec.describe Forecast do
  describe 'it returns all required weather data for provided location' do
    it 'contains three weather attributes - current, daily, hourly' do
      data = {
        "data": {
          "id": null,
          "type": "forecast",
          "attributes": {
            "current_weather": {
              "datetime": "2021-06-12 17:27:03 -0600",
              "temperature": 79.4
            },
            "daily_weather": [
              {
                "date": "2020-10-01",
                "sunrise": "2020-10-01 06:10:43 -0600"
              }
            ],
            "hourly_weather": [
              {
                "time": "14:00:00",
                "conditions": "cloudy with a chance of meatballs"
              }
            ]
          }
        }
      }
      forecast = Forecast.new(data)
      expect(forecast.id).to eq(nil)
      expect(forecast.current_weather.class).to eq(Hash)
      expect(forecast.daily_weather.class).to eq(Hash)
      expect(forecast.hourly_weather.class).to eq(Hash)
    end
  end 
end 