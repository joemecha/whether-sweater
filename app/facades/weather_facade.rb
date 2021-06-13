class WeatherFacade
  def self.get_forecast_for_a_city(location)
    coord = CoordinatesService.fetch_lat_lon(location)
    if coord[:lat] == 39.390897 && coord[:lng] == -99.066067 # Mapquest API default if no results
      :error
    else
      lat = coord[:lat]
      lng = coord[:lng]
      json = WeatherService.fetch_forecast_for_a_city(lat, lng)
      Forecast.new(json)
    end
  end
end
