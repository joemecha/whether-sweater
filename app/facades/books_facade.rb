class BooksFacade
  def self.get_books_for_a_city(location)
    coord = CoordinatesService.fetch_lat_lon(location)
    lat = coord[:lat]
    lng = coord[:lng]
    weather_json = WeatherService.fetch_forecast_for_a_city(lat, lng)
    
    book_json = BookService.fetch_books(location)
    Book.new(location, book_json, weather_json)
  end
end