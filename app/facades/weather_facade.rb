class WeatherFacade
  def self.get_forecast_for_a_city(location)
    return :error if location == ''

    coord = CoordinatesService.fetch_lat_lon(location)

    return :error if coord[:lat] == 39.390897 && coord[:lng] == -99.066067 # Mapquest API default if no results

    lat = coord[:lat]
    lng = coord[:lng]
    json = WeatherService.fetch_forecast_for_a_city(lat, lng)
    Forecast.new(json)
  end
end
