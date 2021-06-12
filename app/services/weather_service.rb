class WeatherService
  def self.fetch_forecast_for_a_city(location)
    coord = fetch_lat_lon(location)
    lat = coord[:lat]
    lon = coord[:lng]
    key = ENV['weather_api_key']

    response = Faraday.get("http://api.openweathermap.org/data/2.5/onecall?lat=#{lat}&lon=#{lon}&exclude=minutely,alerts&units=imperial&appid=#{key}")
    var = JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.fetch_lat_lon(location)
    geo_key = ENV['geocode_key']
    response = Faraday.get("http://www.mapquestapi.com/geocoding/v1/address?key=#{geo_key}&location=#{location}")
    json = JSON.parse(response.body, symbolize_names: true)
    json[:results].first[:locations].first[:latLng]
  end
end