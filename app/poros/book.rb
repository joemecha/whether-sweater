class Book
  attr_reader :id,
              :destination,
              :forecast,
              :total_books_found,
              :books

  def initialize(location, book_data, weather_data)
    @id = nil
    @destination = location 
    @forecast = BookForecast.new(weather_data)
    @total_books_found = book_data[:numFound]
    @books = book_data[:works].map do |book|
      OneBook.new(book)
    end
  end
end