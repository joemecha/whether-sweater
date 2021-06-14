class WeatherFacade
  def self.get_background_image_for_a_city(location)
    json = WeatherService.fetch_forecast_for_a_city(location)
    Image.new(json)
  end
end
