class WeatherService
  class << self 
    def fetch_forecast_for_a_city(location)
      # geo_location = Geocoder.search("#{location},us")
      lat = geo_location.first.data["lat"]
      lon = geo_location.first.data["lon"]
      key = ENV['weather_api_key']

      response = Faraday.get("http://api.openweathermap.org/data/2.5/onecall?lat=#{lat}&lon=#{lon}&exclude=minutely,alerts&units=imperial&appid=#{key}")
      var = JSON.parse(response.body, symbolize_names: true)
    end

    def fetch_lat_long(location)
      
    end
  end
end