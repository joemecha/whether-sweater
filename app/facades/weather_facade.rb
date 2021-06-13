class WeatherFacade
  def self.get_forecast_for_a_city(location)
    json = WeatherService.fetch_forecast_for_a_city(location)
    Forecast.new(json)
    # ADD ERROR HANDLING
  end
end