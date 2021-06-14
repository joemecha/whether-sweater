class Book
  attr_reader :id,
              :destination,
              :forecast,
              :total_books_found,
              :books

  def initialize(location, book_data, weather_data)
    @id = nil
    @destination = location 
    require 'pry'; binding.pry
    # @forecast = BookForecast.new(weather_data[:current])
    # @daily_weather = data[:daily][0..4].map do |day|
    #   DailyWeather.new(day)
    # end
    # @books = book_data[:].map do |book|
    #   OneBook.new(book)
    # end
  end
end