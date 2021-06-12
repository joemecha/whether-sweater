class WeatherFacade
  def get_forecast_for_a_city(location)
    json = WeatherService.fetch_forecast_for_a_city(location)
    # add required data here
    # assign to variables as needed to pass to PORO
    WeatherInfo.new(info)
    # ADD ERROR HANDLING
  end
end