class WeatherFacade
  def self.get_forecast_for_a_city(location)
    coordinates = CoordinateService.fetch_lat_lon(location)
    require 'pry'; binding.pry
    lat = 
    lon = 
    json = WeatherService.fetch_forecast_for_a_city(lat, lon)
    Forecast.new(json)
  end
end