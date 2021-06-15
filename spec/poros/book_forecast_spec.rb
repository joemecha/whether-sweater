require 'rails_helper'

RSpec.describe BookForecast do
  describe 'it encapsulates current weather data for book search' do 
    it 'holds current weather data' do 
      info = {
        "lat": 40.0833,
        "lon": -105.3505,
        "timezone": "America/Denver",
        "timezone_offset": -21600,
        "current": {
            "dt": 1623547357,
            "sunrise": 1623497510,
            "sunset": 1623551460,
            "temp": 76.95,
            "feels_like": 75.85,
            "pressure": 1018,
            "humidity": 32,
            "dew_point": 44.87,
            "uvi": 0.59,
            "clouds": 1,
            "visibility": 10000,
            "wind_speed": 1.01,
            "wind_deg": 133,
            "wind_gust": 4,
            "weather": [
            {
                "id": 800,
                "main": "Clear",
                "description": "clear sky",
                "icon": "01d"
            }
        ]
    },
            "daily": [
              {
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
        },
        {
            "dt": 1623610800,
            "sunrise": 1623583908,
            "sunset": 1623637886,
            "moonrise": 1623593220,
            "moonset": 1623648660,
            "moon_phase": 0.1,
            "temp": {
                "day": 80.22,
                "min": 56.82,
                "max": 82.36,
                "night": 62.4,
                "eve": 76.93,
                "morn": 63.88
            },
            "feels_like": {
                "day": 78.94,
                "night": 61.21,
                "eve": 75.97,
                "morn": 61.56
            },
            "pressure": 1014,
            "humidity": 24,
            "dew_point": 39.83,
            "wind_speed": 9.71,
            "wind_deg": 69,
            "wind_gust": 10.2,
            "weather": [
                {
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10d"
                }
            ],
            "clouds": 13,
            "pop": 0.39,
            "rain": 0.44,
            "uvi": 12.75
        },
        {
            "dt": 1623697200,
            "sunrise": 1623670307,
            "sunset": 1623724311,
            "moonrise": 1623683340,
            "moonset": 0,
            "moon_phase": 0.14,
            "temp": {
                "day": 86.04,
                "min": 59.22,
                "max": 88.47,
                "night": 66.69,
                "eve": 81.45,
                "morn": 66
            },
            "feels_like": {
                "day": 82.71,
                "night": 64.47,
                "eve": 79.65,
                "morn": 64.47
            },
            "pressure": 1013,
            "humidity": 16,
            "dew_point": 34.16,
            "wind_speed": 10.85,
            "wind_deg": 79,
            "wind_gust": 13.04,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "clouds": 0,
            "pop": 0.15,
            "uvi": 13.02
        },
        {
            "dt": 1623783600,
            "sunrise": 1623756708,
            "sunset": 1623810734,
            "moonrise": 1623773640,
            "moonset": 1623737220,
            "moon_phase": 0.17,
            "temp": {
                "day": 84.96,
                "min": 61.97,
                "max": 88.21,
                "night": 70.32,
                "eve": 85.44,
                "morn": 62.31
            },
            "feels_like": {
                "day": 81.9,
                "night": 68.5,
                "eve": 82.29,
                "morn": 59.85
            },
            "pressure": 1015,
            "humidity": 17,
            "dew_point": 33.96,
            "wind_speed": 9.6,
            "wind_deg": 268,
            "wind_gust": 8.23,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "clouds": 0,
            "pop": 0,
            "uvi": 13.1
        },
        {
            "dt": 1623870000,
            "sunrise": 1623843110,
            "sunset": 1623897156,
            "moonrise": 1623864060,
            "moonset": 1623825540,
            "moon_phase": 0.2,
            "temp": {
                "day": 88.88,
                "min": 64.83,
                "max": 88.88,
                "night": 67.87,
                "eve": 83.82,
                "morn": 64.83
            },
            "feels_like": {
                "day": 84.99,
                "night": 66.2,
                "eve": 81.19,
                "morn": 62.33
            },
            "pressure": 1013,
            "humidity": 14,
            "dew_point": 33.03,
            "wind_speed": 13.53,
            "wind_deg": 40,
            "wind_gust": 15.17,
            "weather": [
                {
                    "id": 803,
                    "main": "Clouds",
                    "description": "broken clouds",
                    "icon": "04d"
                }
            ],
            "clouds": 70,
            "pop": 0.03,
            "uvi": 10.78
        }
      ],
        "hourly": [
        {
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
        },
        {
            "dt": 1623535200,
            "temp": 79.56,
            "feels_like": 79.56,
            "pressure": 1018,
            "humidity": 24,
            "dew_point": 39.63,
            "uvi": 6.51,
            "clouds": 3,
            "visibility": 10000,
            "wind_speed": 7.34,
            "wind_deg": 72,
            "wind_gust": 9.4,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623538800,
            "temp": 79.36,
            "feels_like": 79.36,
            "pressure": 1016,
            "humidity": 23,
            "dew_point": 38.39,
            "uvi": 3.85,
            "clouds": 7,
            "visibility": 10000,
            "wind_speed": 5.84,
            "wind_deg": 67,
            "wind_gust": 7.54,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623542400,
            "temp": 78.53,
            "feels_like": 77.16,
            "pressure": 1015,
            "humidity": 23,
            "dew_point": 37.69,
            "uvi": 1.8,
            "clouds": 14,
            "visibility": 10000,
            "wind_speed": 5.01,
            "wind_deg": 47,
            "wind_gust": 5.79,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623546000,
            "temp": 75.56,
            "feels_like": 74.23,
            "pressure": 1013,
            "humidity": 30,
            "dew_point": 41.99,
            "uvi": 0.59,
            "clouds": 35,
            "visibility": 10000,
            "wind_speed": 4.52,
            "wind_deg": 23,
            "wind_gust": 7.09,
            "weather": [
                {
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623549600,
            "temp": 67.08,
            "feels_like": 65.32,
            "pressure": 1013,
            "humidity": 39,
            "dew_point": 41.14,
            "uvi": 0,
            "clouds": 29,
            "visibility": 10000,
            "wind_speed": 3.58,
            "wind_deg": 302,
            "wind_gust": 4.21,
            "weather": [
                {
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623553200,
            "temp": 63.12,
            "feels_like": 60.93,
            "pressure": 1014,
            "humidity": 38,
            "dew_point": 36.57,
            "uvi": 0,
            "clouds": 21,
            "visibility": 10000,
            "wind_speed": 6.67,
            "wind_deg": 273,
            "wind_gust": 5.44,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623556800,
            "temp": 61.63,
            "feels_like": 59.27,
            "pressure": 1015,
            "humidity": 38,
            "dew_point": 35.19,
            "uvi": 0,
            "clouds": 15,
            "visibility": 10000,
            "wind_speed": 7.14,
            "wind_deg": 273,
            "wind_gust": 5.86,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02n"
                }
            ],
            "pop": 0
        }
      ]
          }

      current = BookForecast.new(info)
      expect(current.summary.class).to eq(String)
      expect(current.temperature.class).to eq(String)
    end
  end
end