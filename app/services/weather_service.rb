class WeatherService
  class << self 
    def fetch_forecast_for_a_city(location)
      coord = fetch_lat_long(location)
      lat = coord["lat"]
      lon = coord["lon"]
      key = ENV['weather_api_key']

      response = Faraday.get("http://api.openweathermap.org/data/2.5/onecall?lat=#{lat}&lon=#{lon}&exclude=minutely,alerts&units=imperial&appid=#{key}")
      var = JSON.parse(response.body, symbolize_names: true)
    end

    def fetch_lat_long(location)
      key = ENV['geocode_key']
      response = Faraday.get("http://www.mapquestapi.com/geocoding/v1/address?key=#{key}&location=#{location}")
      json = JSON.parse(response.body, symbolize_names: true)
      json[:results].first[:locations].first[:latLng]
    end
  end
end